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
    internal class PersistenciaCategorias : IPersistenciaCategorias
    {
        //singleton 
        private static PersistenciaCategorias _instancia = null;

        private PersistenciaCategorias() { }

        public static PersistenciaCategorias GetInstancia()
        {
            if (_instancia == null)
                _instancia = new PersistenciaCategorias();


            return _instancia;

        }

        public void AgregarCategorias(Categorias ca)
        {

            /*Create Procedure AltaCategorias
             *@ID_Categorias varchar(3) ,
             *@nombre varchar(50)
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("AltaCategorias", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Categorias", ca.ID_Categorias);
            cmd.Parameters.AddWithValue("@Nombre", ca.Nombre);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("La categoria ya existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }
        }

        public void EliminarCategorias(Categorias ca)
        {

            /* Create Procedure BajaCategorias
             * @ID_Categorias varchar(3)
             * AS*/


            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BajaCategorias", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Categorias", ca.ID_Categorias);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("El id categorias ya existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }
        }



        public void ModificarCategorias(Categorias ca)
        {

            /*CREATE PROCEDURE ModCategorias
             *@ID_Categorias varchar(3),
             * @nombre varchar(50)
             * AS*/



            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ModificarCategorias", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Categorias", ca.ID_Categorias);
            cmd.Parameters.AddWithValue("@Nombre", ca.Nombre);

            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

            switch ((int)prmRetorno.Value)
            {
                case -1:
                    throw new Exception("El id categorias ya existe en la base de datos.");
                    break;
                case -2:
                    throw new Exception("Error de base de datos.");
                    break;
            }
        }


        private Categorias Buscar(string ID_Categorias)
        {

            /* CREATE PROCEDURE ListoCategorias
             * @ID_Categorias int
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BuscarCategoriasInactivas", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Categorias", ID_Categorias);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*from Categorias
             where ID_Categorias = @ID_Categorias*/


            if (lector.Read())
            {
                string Nombre = (string)lector[1];


                cnn.Close();
                return new Categorias((string)lector[0], Nombre);

            }

            cnn.Close();
            return null;

        }


        public Categorias BuscarCategoriasActivas(string ID_Categorias)
        {

            /* Create Procedure CategoriasBuscarActivos
             * @ID_Categorias varchar(3)
             * AS */


            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BuscarCategoriasInactivas", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID_Categorias", ID_Categorias);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*Select*
            from Categorias
            where ID_Categorias = @ID_Categorias AND activo = 1*/
            if (lector.Read())
            {

                string Nombre = (string)lector[1];


                cnn.Close();
                return new Categorias(ID_Categorias, Nombre);

            }

            cnn.Close();
            return null;

        }


        public List<Categorias> ListarCategoriasActivas()
        {
            List<Categorias> resp = new List<Categorias>();

            /* CREATE PROCEDURE ListoCategoriasActivas
             *  @ID_Categorias int
             *  AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("ListarCategoriasActivas", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*Select*
            from Categorias
            where activo = 1*/
            while (lector.Read())
            {

                string ID_Categorias = (string)lector[0];
                string Nombre = (string)lector[1];


                resp.Add(new Categorias(ID_Categorias, Nombre));


            }

            cnn.Close();
            return null;

        }
    
    }
}























    





