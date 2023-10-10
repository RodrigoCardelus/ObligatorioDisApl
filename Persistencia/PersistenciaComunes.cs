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
    internal class PersistenciaComunes : IPersistenciaComunes
    {

        //singleton 
        private static PersistenciaComunes _instancia = null;
        private static int ID_Avisos;

        private PersistenciaComunes() { }

        public static PersistenciaComunes GetInstancia()
        {
            if (_instancia == null)
                _instancia = new PersistenciaComunes();


            return _instancia;

        }


        //operaciones

        public void AgregarAvisos(Comunes C)
        {
            /*CREATE PROCEDURE AltaAvisosComunes
             * @ID_Categorias varchar(3),
             * @fecha_Inicial datetime,
             * @fecha_Final datetime,
             * @usuario varchar(50),
             * @cedula int,
             * @texto varchar(50) AS*/


            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("AgregarComunes", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID_Categorias", C.ID_Categorias);
            cmd.Parameters.AddWithValue("@Fecha_Inicial", C.Fecha_Inicial);
            cmd.Parameters.AddWithValue("@Fecha_Final", C.Fecha_Final);
            cmd.Parameters.AddWithValue("@Usuario", C.Usuario);
            cmd.Parameters.AddWithValue("@Cedula", C.Cedula);
            cmd.Parameters.AddWithValue("@texto", C.Texto);
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



        public void EliminarAvisos(Comunes C)
        {
            /*CREATE PROCEDURE BajaAvisosComunes
             *@ID_Avisos int
             *AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("EliminarComunes", cnn);
            cmd.Parameters.AddWithValue("ID_Avisos", C.ID_Avisos);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID_Avisos", C.ID_Avisos);

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

        public void ModificarAvisos(Comunes C)
        {
            /*Create PROCEDURE ModAvisosComunes
             *@ID_Avisos int,
             *@ID_Categorias varchar(3),
             *@Fecha_inicial datetime,
             *@Fecha_final datetime ,
             *@usuario varchar(50),
             *@cedula int,
             *@texto varchar(50) AS*/


            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("Modificar Comunes", cnn);
            cmd.Parameters.AddWithValue("ID_Categorias", C.ID_Categorias);
            cmd.Parameters.AddWithValue("Fecha_Inicial", C.Fecha_Inicial);
            cmd.Parameters.AddWithValue("Fech_Final", C.Fecha_Final);
            cmd.Parameters.AddWithValue("Usuario", C.Usuario);
            cmd.Parameters.AddWithValue("Cedula", C.Cedula);
            cmd.Parameters.AddWithValue("Texto", C.Texto);


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


        public Comunes Buscar(int ID_Avisos)
        {
            /*CREATE PROCEDURE BuscoAvisosComunes
             *@ID_Avisos int
             *AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BuscarClientesComunes", cnn);
            cmd.Parameters.AddWithValue("@ID_Avisos", ID_Avisos);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);



            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*select*
            from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos
            where a.ID_Avisos = @ID_Avisos*/
            if (lector.Read())
            {
                int id_Avisos = (int)lector[0];
                Categorias categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl = (Clientes)lector[5];
                string Texto = (string)lector[6];
                cnn.Close();
                return new Comunes(id_Avisos, categ, Fecha_Inicial, Fecha_Final, emp, cl, Texto);

            }

            cnn.Close();
            return null;

        }


        public List<Comunes>ListarComunes()
        {
            List<Comunes> resp = new List<Comunes>();

            /*CREATE PROCEDURE ListoAvisosComunes AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ListadoAvisosComunes", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
          
            /*select*
            from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos */

            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            while (lector.Read())
            {

                lector.Read();
                int id_Avisos = (int)lector[0];
                Categorias categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl = (Clientes)lector[5];
                string Texto = (string)lector[6];
                

                resp.Add(new Comunes(id_Avisos,categ, Fecha_Inicial, Fecha_Final, emp, cl, Texto));


            }
            cnn.Close();
            return resp;

        }
        
        public List<Comunes> ListarAvisosComunes()
        {
            List<Comunes> resp = new List<Comunes>();

            /*CREATE PROCEDURE ListoAvisosComunes AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ListadoAvisosComunes", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            /* select*
            from Avisos a inner join Comunes c on a.ID_Avisos = c.ID_Avisos*/
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            while (lector.Read())
            {


                int id_Avisos = (int)lector[0];
                Categorias Categ = (Categorias)lector[1];
                DateTime Fecha_Inicial = (DateTime)lector[2];
                DateTime Fecha_Final = (DateTime)lector[3];
                Empleados emp = (Empleados)lector[4];
                Clientes cl = (Clientes)lector[5];
                string Texto = (string)lector[6];


                resp.Add(new Comunes(id_Avisos, Categ, Fecha_Inicial, Fecha_Final, emp, cl, Texto));


            }
            cnn.Close();
            return resp;

        }

        public Comunes BuscarAvisos(int pID_Avisos)
        {
            throw new NotImplementedException();
        }
    }
}





    