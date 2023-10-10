USE master 
GO

------------------------------------------------------------------------------------------------------------
--Determina si esta la base de datos de la biblioteca y la borra
if exists(Select * FROM SysDataBases Where name = 'ObligatorioDis')
Begin
     Drop DataBase ObligatorioDis
END
go

--Creo la base de datos Obligatorio Diseño
CREATE DATABASE ObligatorioDis 
go

-----------------------------------------------------------------------------------------------------------
--pone en uso la bd
USE ObligatorioDis
go

--Creacion de tablas

CREATE TABLE dbo.Clientes
(
cedula int Primary Key NOT NULL,
nombre varchar(50) NOT NULL,
direccion varchar(50) NOT NULL,
activo bit Default(1) NOT NULL --1 esta activo // 0 tiene baja logica
)
GO

CREATE TABLE Telefonos
(
  cedula int NOT NULL Foreign Key REFERENCES Clientes(cedula),
  NumTel varchar(12) NOT NULL
  check(isnumeric(NumTel)= 1),
  primary key (Cedula,NumTel)  
)
GO


CREATE TABLE dbo.Empleados
(
 usuario varchar(10) NOT NULL 
 Primary Key
 check(len(usuario) = 10),
 contraseña varchar(7) NOT NULL
 check(contraseña like '[A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]')
)
GO

CREATE TABLE dbo.Categorias
(
 ID_Categorias varchar(3) NOT NULL 
 Primary Key
 check(len(ID_Categorias) = 3),
 nombre varchar(50) NOT NULL,
 activo bit Default(1) NOT NULL --1 esta activo // 0 tiene baja logica
)
GO


CREATE TABLE dbo.Avisos
(
ID_Avisos int NOT NULL
IDENTITY(1,1)
Primary Key,
fecha_inicial datetime 
check(fecha_inicial >= getDate()),
fecha_final datetime NOT NULL,
usuario varchar(10) NOT NULL FOREIGN KEY REFERENCES Empleados(usuario),
ID_Categorias varchar(3) NOT NULL Foreign Key REFERENCES Categorias(ID_Categorias),
cedula int NOT NULL Foreign Key REFERENCES Clientes(cedula),
check(fecha_final > fecha_inicial)

)
GO


CREATE TABLE dbo.Comunes
(
ID_Avisos int primary key NOT NULL,
texto varchar(50) NOT NULL,
FOREIGN KEY (ID_Avisos) REFERENCES Avisos(ID_Avisos)
)
GO

CREATE TABLE dbo.Destacados
(
ID_Avisos int primary key NOT NULL,
descripcion varchar(50) NOT NULL,
precio int NOT NULL
check(precio > 0),
FOREIGN KEY (ID_Avisos) REFERENCES Avisos(ID_Avisos)
)
GO



------------------------------------------------------------------------------------------------------
--Store Procedure

--Creo SP de Alta AvisosComunes
CREATE PROCEDURE AltaAvisosComunes @ID_Categorias varchar(3), @fecha_Inicial datetime, @fecha_Final datetime,@usuario varchar(10), @cedula int, @texto varchar(50) AS
BEGIN
         if (not(Exists(Select * From Empleados Where usuario = @usuario)))
		     Begin
			   return -1
			  end
	     if (not(Exists(Select * From Categorias Where ID_Categorias = @ID_Categorias AND activo = 1)))
		   Begin
			 return -2
		   end
		 if (not(Exists(Select * From Clientes Where cedula = @cedula AND activo = 1)))
		    Begin
			 return -3
		   end
		   
		   
        DECLARE @Error int
        
	    BEGIN TRAN
        INSERT  Avisos(fecha_inicial,fecha_Final,usuario,ID_Categorias,cedula) VALUES (@fecha_Inicial, @fecha_Final, @usuario, @ID_Categorias, @cedula )
      	SET @Error=@@ERROR;
      	
	    INSERT Comunes (ID_Avisos,texto) VALUES (@@IDENTITY, @texto);
	    
	    SET @Error=@@ERROR+@Error;
	    IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN @@IDENTITY;
	    END
	    ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -1;
	     END	     
END
Go

CREATE PROCEDURE AltaAvisosDestacados  @ID_Categorias varchar(3), @Fecha_Inicial datetime, @Fecha_Final datetime,@usuario varchar(10), @cedula int, @Descripcion varchar(50), @precio int AS
BEGIN
         if (not(Exists(Select * From Empleados Where usuario = @usuario)))
		     Begin
			   return -1
			  end
	     if (not(Exists(Select * From Categorias Where ID_Categorias = @ID_Categorias AND activo = 1)))
		   Begin
			 return -2
		   end
		 if (not(Exists(Select * From Clientes Where cedula = @cedula AND activo = 1)))
		    Begin
			 return -3
		   end
		   
        DECLARE @Error int
        
	    BEGIN TRAN
        INSERT  Avisos(fecha_inicial,fecha_Final, usuario, ID_Categorias, cedula) VALUES (@Fecha_Inicial, @Fecha_Final,@usuario,@ID_Categorias,@cedula )
      	SET @Error=@@ERROR;
      	
	    INSERT Destacados (ID_Avisos,descripcion,precio) VALUES (@@IDENTITY, @Descripcion, @precio);
	    
	    SET @Error=@@ERROR+@Error;
	    IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN @@IDENTITY;
	    END
	    ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -4;
	     END	  
END
Go


--Creo SP de baja
CREATE PROCEDURE BajaAvisosComunes @ID_Avisos int AS
BEGIN
     if (not exists(select * from Comunes where ID_Avisos = @ID_Avisos))
         return -1
     
    
       DECLARE @Error int
       
       BEGIN TRAN
       Delete From Comunes where ID_Avisos = @ID_Avisos 
       SET @Error=@@ERROR;
       
       Delete From Avisos where ID_Avisos = @ID_Avisos
       SET @Error=@@ERROR+@Error;
       
	    IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN 1;
	    END
	    ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -2;
	     END  
end
GO 


CREATE PROCEDURE BajaAvisosDestacados @ID_Avisos int AS
BEGIN
     if (not exists(select * from Destacados where ID_Avisos = @ID_Avisos))
         return -1
     
       DECLARE @Error int
       
       BEGIN TRAN
       Delete From Destacados where ID_Avisos = @ID_Avisos
       SET @Error=@@ERROR;
          
       Delete from Avisos where ID_Avisos = @ID_Avisos
       SET @Error=@@ERROR+@Error;
       
	    IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN 1;
	    END
	    ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -2;
	     END
end
GO 


--Creo SP de modificacion
Create PROCEDURE ModAvisosComunes @ID_Avisos int, @ID_Categorias varchar(3), @Fecha_inicial datetime, @Fecha_final datetime ,@usuario varchar(10),@cedula int, @texto varchar(50) AS
BEGIN 
     if (not(Exists(Select * From Empleados Where usuario = @usuario)))
	     return -1
	 if (not(Exists(Select * From Categorias Where ID_Categorias = @ID_Categorias and activo = 1)))
	     return -2
     if (not(Exists(Select * From Clientes Where cedula = @cedula AND activo = 1)))
		 return -3

     if Not Exists(select * from Comunes Where ID_Avisos = @ID_Avisos)
         return -4
         
    
    DECLARE @Error int
       
    BEGIN TRAN
       
     Update Avisos
       set ID_Categorias = @ID_Categorias,
       fecha_inicial = @Fecha_inicial,
       fecha_final = @Fecha_final,
       usuario = @usuario,
       cedula = @cedula
       where ID_Avisos = @ID_Avisos
     SET @Error=@@ERROR;  
     
      
     UPDATE Comunes
       set texto = @texto  
       where ID_Avisos = @ID_Avisos 
     SET @Error=@@ERROR+@Error;
       
	 IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN 1;
	    END
	  ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -5;
	  END  
END
Go

Create PROCEDURE ModAvisosDestacados @ID_Avisos int, @ID_Categorias varchar(3), @Fecha_inicial datetime, @Fecha_final datetime, @usuario varchar(10),@cedula int, @descripcion varchar(50), @precio int AS
BEGIN
if (not(Exists(Select * From Empleados Where usuario = @usuario)))
	     return -1
	if (not(Exists(Select * From Categorias Where ID_Categorias = @ID_Categorias and activo = 1)))
	     return -2
     if (not(Exists(Select * From Clientes Where cedula = @cedula AND activo = 1)))
		 return -3

     if Not Exists(select * from Destacados Where ID_Avisos = @ID_Avisos)
         return -4

    DECLARE @Error int
       
    BEGIN TRAN

       Update Avisos
       set ID_Categorias = @ID_Categorias, 
       fecha_inicial = @Fecha_inicial,
       fecha_final = @Fecha_final,
       usuario = @usuario,
       cedula = @cedula
       where ID_Avisos = @ID_Avisos
       SET @Error=@@ERROR;
	  
	  
       UPDATE Destacados
       set descripcion = @descripcion,
       precio = @precio
       where ID_Avisos = @ID_Avisos
       SET @Error=@@ERROR+@Error;
      
      IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN 1;
	    END
	  ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -5;
	  END  
END
GO


--Creo SP de busqueda
CREATE PROCEDURE BuscoAvisosComunes @ID_Avisos int AS
BEGIN
     select *
     from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos
     where a.ID_Avisos = @ID_Avisos   
end
Go


CREATE PROCEDURE BuscoAvisosDestacados @ID_Avisos int AS
BEGIN
     select *
     from Avisos a inner join Destacados d on a.ID_Avisos = d.ID_Avisos
     where a.ID_Avisos = @ID_Avisos
end
GO

--Creo SP de listado
CREATE PROCEDURE ListoAvisosComunes AS
BEGIN 
    select *
    from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos
end 
Go


CREATE PROCEDURE ListoAvisosDestacados AS
Begin
     select *
     from Avisos a inner join Destacados d on a.ID_Avisos = d.ID_Avisos
end
GO


--Creo SP Alta Clientes
CREATE PROCEDURE AltaClientes @Cedula int, @Nombre varchar(50),@Direccion varchar(50) AS
BEGIN
    if (not(exists(select * from Clientes where cedula = @Cedula AND activo = 0)))
       return -1
        
      INSERT Clientes (cedula,nombre,direccion) VALUES (@Cedula, @Nombre, @Direccion);
	  if(@@Error = 0)
	    return 1
	  else
	    return -2 
END
Go
	  
         


CREATE PROCEDURE AltaTelefono @Cedula int, @NumTel varchar(12) AS
BEGIN
      if (not(Exists( select * from Clientes where cedula = @Cedula AND activo = 1)))
      return -1
     
      if  exists(select * from Telefonos 
      Where cedula = @Cedula AND NumTel = @NumTel)
      return -2
     
     Insert Telefonos(cedula,NumTel) values(@Cedula,@NumTel)
     
     if @@ERROR = 0
         return 1
end
GO


--Creo SP Baja Clientes
CREATE PROCEDURE BajaClientes @Cedula int as
BEGIN 
    if(not exists(select * from Clientes where cedula = @Cedula AND activo = 0))
    BEGIN 
       return -1
    END
 
         DECLARE @Error int
         BEGIN TRAN
         Delete From Telefonos where cedula = @Cedula
         SET @Error=@@ERROR;
         Delete From Clientes where cedula = @Cedula 
         SET @Error=@Error + @@ERROR;
        
        IF(@Error=0)
	    BEGIN
		   COMMIT TRAN;
		   RETURN 1;
	    END
	  ELSE
	    BEGIN
		   ROLLBACK TRAN;
		   RETURN -2;
	  END  
END
Go

--Creo SP Modificar Clientes
CREATE PROCEDURE ModClientes @Cedula int, @Nombre varchar(50), @Direccion varchar(50) AS
Begin 
     if(not exists(select * from Clientes where cedula = @Cedula AND activo = 1))
     return -1
     else
     begin 
        UPDATE Clientes set cedula = @Cedula, nombre = @Nombre, direccion= @Direccion 
         where cedula = @Cedula
       IF(@@Error = 0)
         RETURN 1;
     end
end
GO 

--busqueda de Clientes
CREATE PROCEDURE ClientesBuscarActivos @cedula int AS
BEGIN
    Select *
    from Clientes
    where cedula = @cedula AND activo = 1
end
GO


--busqueda de Clientes
CREATE PROCEDURE ClientesBuscar @cedula int AS
BEGIN
    Select *
    from Clientes
    where cedula = @cedula 
end
GO


--lista de Clientes
CREATE PROCEDURE ListoClientesActivos AS
BEGIN
    Select *
    from Clientes
    where activo = 1
end
GO 



CREATE PROCEDURE TelefonoDeUnCliente @cedula int AS
BEGIN
    SELECT * FROM Telefonos where cedula = @cedula
end
GO


CREATE PROCEDURE EliminoTelefonosDeCliente @cedula int AS
BEGIN
    Delete From Telefonos where cedula = @cedula
END
GO


--SP Alta Empleados
CREATE PROCEDURE AltaEmpleados @Usuario varchar(10), @Contraseña varchar(7) AS 
BEGIN
    if(exists(select * from Empleados where usuario = @Usuario))
    return -1
    else
    begin
        Insert Empleados(usuario,contraseña) values(@Usuario,@Contraseña)
        IF(@@Error<>0)
         RETURN -2;
    end
end
GO



--Creo SP de Busqueda de Empleados
CREATE PROCEDURE BuscoEmpleados @usuario varchar(10) AS
BEGIN
    select *
    From Empleados
    where usuario = @usuario
end
GO


CREATE PROCEDURE LogueoEmpleados @usuario varchar(10), @contraseña varchar(7) AS
BEGIN
    select * 
    from Empleados 
    where usuario = @usuario AND contraseña = @contraseña
end
GO 


Create Procedure AltaCategorias @ID_Categorias varchar(3),@nombre varchar(50) AS
BEGIN
  if (not(exists(select * from Categorias where ID_Categorias = @ID_Categorias )))
    BEGIN
          INSERT Categorias (ID_Categorias,nombre) VALUES (@ID_Categorias, @Nombre);
          IF @@ERROR=0
             RETURN 1
          ELSE
             RETURN -1   
    END
    ELSE
        RETURN -2
     
End
GO
      

Create Procedure BajaCategorias @ID_Categorias varchar(3) AS
BEGIN
    if(not exists(select * from Categorias where ID_Categorias = @ID_Categorias))
    BEGIN 
       return -1
    END
 
    if(Exists(select * from Categorias where ID_Categorias = @ID_Categorias))
     Begin 
      --Baja Logica --hay dependencias
     Update Categorias set activo = 0 
           where ID_Categorias = @ID_Categorias
          return 0
     end
     ELSE
         BEGIN 
         --Baja Fisica -no hay dependencias   
         Delete from Categorias where ID_Categorias = @ID_Categorias
         if(@@ERROR = 0)
            return 1
     Else 
           return -3  
        END 
END      
go     


CREATE PROCEDURE ModCategorias @ID_Categorias varchar(3), @nombre varchar(50) AS
Begin 
     if(not exists(select * from Categorias where ID_Categorias = @ID_Categorias AND activo = 1))
     return -1
     else
     begin 
        UPDATE Categorias set ID_Categorias = @ID_Categorias, nombre = @Nombre 
         where ID_Categorias = @ID_Categorias
       IF(@@Error = 0)
         RETURN 1;
     end
end
GO 


CREATE PROCEDURE CategoriasBuscar @ID_Categorias varchar(3) AS
BEGIN
   Select *
   from Categorias
   where ID_Categorias = @ID_Categorias
end
GO




CREATE PROCEDURE CategoriasBuscarActivos @ID_Categorias varchar(3) AS
BEGIN
    Select *
    from Categorias
    Where ID_Categorias = @ID_Categorias AND activo = 1
end
GO



CREATE PROCEDURE ListoCategoriasActivas AS
BEGIN
    Select *
    from Categorias
    where activo = 1
end
GO 




--Datos de Prueba
INSERT Clientes(cedula,nombre,direccion) VALUES(521768,'Rodrigo Cardelus','Rambla ohiggins 4725')
INSERT Clientes(cedula, nombre,direccion)VALUES(145678,'Facundo Romero','Avenida Italia 3040')
INSERT Clientes(cedula,nombre,direccion) VALUES(654327, 'Mathias Estevez','Juan Paullier y Nueva Palmira 2300')
INSERT Clientes(cedula,nombre,direccion) VALUES(589764, 'Joaquin Cardozo','18 de julio y Ejido 1025')
INSERT Clientes(cedula,nombre,direccion) VALUES(574321, 'Camila Cardelus','Rambla ohiggins 4725')

INSERT Telefonos(cedula,NumTel) VALUES (521768, '09858871')
INSERT Telefonos(cedula,NumTel) VALUES (145678, '09456789')
INSERT Telefonos(cedula,NumTel) VALUES (654327, '09245678')
INSERT Telefonos(cedula,NumTel) VALUES (589764, '09789765')
INSERT Telefonos(cedula,NumTel) VALUES (574321, '09678592')

INSERT Categorias(ID_Categorias, nombre) VALUES('INM','Inmuebles')
INSERT Categorias(ID_Categorias, nombre) VALUES('VEH','Vehiculos')
INSERT Categorias(ID_Categorias, nombre) VALUES('EMP','Empleo')

INSERT Empleados(usuario,contraseña) VALUES('JuanMartin','abcde12')
INSERT Empleados(usuario,contraseña) VALUES('MauricioGo','maugo60')
INSERT Empleados(usuario,contraseña) VALUES('DelfinaRod','delfi22')


--------EXEC SP---------------------------------------------------------------------------------

--Creo SP de Alta AvisosComunes
-- PROCEDURE AltaAvisosComunes @ID_Categorias int, @fecha_Inicial datetime, @fecha_Final datetime,@usuario varchar(50), @cedula int, @texto varchar(50) AS

Declare @fecha_inicial datetime 

set @fecha_inicial = GETDATE()

Declare @fecha_final datetime

set @fecha_final = GETDATE()


EXEC AltaAvisosComunes 'INM', @fecha_inicial, @fecha_final ,'JuanMartin',5217658,'Casa en Malvin 2 Dormitorios'
go

select * from dbo.Telefonos


