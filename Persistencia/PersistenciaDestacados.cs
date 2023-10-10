using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using System.Data.SqlClient;
using System.Data;

namespace Persistencia
{
    internal class PersistenciaDestacados :IPersistenciaDestacados
    {
        //singleton 
        private static PersistenciaDestacados _instancia = null;

        private PersistenciaDestacados() { }

        public static PersistenciaDestacados GetInstancia()
        {
            if (_instancia == null)
                _instancia = new PersistenciaDestacados();


            return _instancia;

        }

        public void AgregarAvisos(Destacados D)
        {
           /*CREATE PROCEDURE AltaAvisosDestacados
            *@ID_Categorias varchar(3),
            *@Fecha_Inicial datetime,
            *@Fecha_Final datetime,
            *@usuario varchar(50),
            *@cedula int,
            *@Descripcion varchar(50),
            *@precio int AS*/


           SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("Agregar Avisos", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Avisos", D.ID_Avisos);
            cmd.Parameters.AddWithValue("ID Categorias", D.ID_Categorias);
            cmd.Parameters.AddWithValue("@Fecha_Inicial", D.Fecha_Inicial);
            cmd.Parameters.AddWithValue("@Fecha_Final", D.Fecha_Final);
            cmd.Parameters.AddWithValue("@Usuario", D.Usuario);
            cmd.Parameters.AddWithValue("@Cedula", D.Cedula);
            cmd.Parameters.AddWithValue("@Descripcion", D.Descripcion);
            cmd.Parameters.AddWithValue("@Precio", D.Precio);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            throw new NotImplementedException();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("El ID Avisos existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }
        }


        public void EliminarAvisos(Destacados D)
        {
           /* CREATE PROCEDURE BajaAvisosComunes @ID_Avisos int AS */

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("Baja Avisos Destacados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID Avisos", D.ID_Avisos);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            throw new NotImplementedException();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("El ID Avisos existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }

        }


        public void ModificarAvisos(Destacados D)
        {
            /*Create PROCEDURE ModAvisosDestacados 
             *@ID_Avisos int,
             *@ID_Categorias varchar(3),
             *@Fecha_inicial datetime,
             *@Fecha_final datetime,
             *@usuario varchar(50),
             *@cedula int,
             *@descripcion varchar(50), 
             *@precio int AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("Modificar Avisos", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_AVISOS", D.ID_Avisos);
            cmd.Parameters.AddWithValue("@ID_Categorias", D.ID_Categorias);
            cmd.Parameters.AddWithValue("@Fecha_Inicial", D.Fecha_Inicial);
            cmd.Parameters.AddWithValue("@Fecha_Final", D.Fecha_Final);
            cmd.Parameters.AddWithValue("@Usuario", D.Usuario);
            cmd.Parameters.AddWithValue("@Cedula", D.Cedula);
            cmd.Parameters.AddWithValue("@Descripcion", D.Descripcion);
            cmd.Parameters.AddWithValue("@Precio", D.Precio);

            throw new NotImplementedException();


            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("El id avisas ya existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }

        }


         public Destacados BuscarAvisos(int pID_Avisos)
        {
            /*CREATE PROCEDURE BuscoAvisosDestacados
             * @ID_Avisos int
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BuscarAvisosDestacados", cnn);
            cmd.Parameters.AddWithValue("@ID_Avisos",pID_Avisos);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            throw new NotImplementedException();
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*select*
            from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos
            where a.ID_Avisos = @ID_Avisos*/
            if (lector.Read())
            {
                int ID_Avisos = (int)lector[0];
                Categorias categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl =  (Clientes)lector[5];
                string descripcion = (string)lector[6];
                int precio  = (int)lector[7];
               
             
                cnn.Close();
                return new Destacados(ID_Avisos,categ, Fecha_Inicial, Fecha_Final,emp,cl, descripcion, precio);

            }

            cnn.Close();
          

        }

        public List<Destacados> ListarDestacados()
        {
            List<Destacados> resp = new List<Destacados>();

            /*CREATE PROCEDURE 
             *ListoAvisosDestacados
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ListadoAvisosDestacados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;



            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            while (lector.Read())
            {
            

                int ID_Avisos = (int)lector[0];
                Categorias categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl = (Clientes)lector[5];
                string descripcion = (string)lector[6];
                int precio = (int)lector[7];


                resp.Add(new Destacados(ID_Avisos, categ, Fecha_Inicial, Fecha_Final, emp, cl, descripcion, precio));

            }
            cnn.Close();

            return resp;

        }

         public List<Destacados> ListarAvisosDestacados()
        {
            List<Destacados> resp = new List<Destacados>();


            /*CREATE PROCEDURE 
             *ListoAvisosDestacados
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ListadoAvisosDestacados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            /*select*
             from Avisos a inner join Destacados d on a.ID_Avisos = d.ID_Avisos*/

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            while (lector.Read())
            {


                int ID_Avisos = (int)lector[0];
                Categorias categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl = (Clientes)lector[5];
                string descripcion = (string)lector[6];
                int precio = (int)lector[7];


                resp.Add(new Destacados(ID_Avisos, categ, Fecha_Inicial, Fecha_Final, emp, cl, descripcion, precio));

            }
            cnn.Close();

            return resp;

        }

    }

 }
