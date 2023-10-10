using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace EntidadesCompartidas
{
    abstract public class Avisos
    {
        #region atributos
        int id_Avisos;
        private Categorias idCategorias;
        DateTime fecha_inicial;
        DateTime fecha_final;
        private Empleados usuario;
        private Clientes cedula;
     
        #endregion

        #region Propiedades
        public int ID_Avisos
        {
            get { return id_Avisos ; }
            set
            {
                if (value < 1)
                {

                    throw new Exception("El id avisos no puede ser menor a 1");

                }

                id_Avisos = value;
            }
        }

        public Categorias ID_Categorias
        {
            get { return idCategorias; }
            set
            {
                if(idCategorias == null)
                {

                    throw new Exception("El id categorias de la clase categoria no puede estar vacio");

                }
             idCategorias = value;

            }

        }
      
        public DateTime Fecha_Inicial
        {
            get { return fecha_final; }
            set { fecha_inicial = value; }

        }
         
        public DateTime Fecha_Final
        {
            get { return fecha_final; }
            set
            { 
                if(fecha_final > fecha_inicial)
                {

                    throw new Exception("La fecha final debe ser mayor a la fecha inicial");

                }

                fecha_final = value;
            }

        }


        public Empleados Usuario
        {
            get { return usuario; }
            set
            {

                if(value == null)
                {

                    throw new Exception("El usuario de la clase empleados no puede estar vacio");


                }
                usuario = value;
            }

        }


        public Clientes Cedula
        {
            get { return cedula; }
            set
            {

                if(value == null)
                {

                    throw new Exception("La cedula de la clase clientes no puede estar vacio");

                }
                cedula = value;

            }

        }
      
        #endregion

        #region Constructores
        public Avisos(int pIDAvisos, Categorias pIdCategorias, DateTime pFecha_Inicial, DateTime pFecha_Final,Empleados pUsuario, Clientes pCedula)
        {
            ID_Avisos = pIDAvisos;
            ID_Categorias = pIdCategorias;
            Fecha_Inicial = pFecha_Inicial;
            Fecha_Final = pFecha_Final;
            Usuario = pUsuario;
            Cedula = pCedula;
           
        }

        #endregion

 

    }
}
