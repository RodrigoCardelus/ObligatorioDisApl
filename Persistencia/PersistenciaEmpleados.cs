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
    internal class PersistenciaEmpleados : IPersistenciaEmpleados
    {

        //singleton 
        private static PersistenciaEmpleados _instancia = null;

        private PersistenciaEmpleados() { }

        public static PersistenciaEmpleados GetInstancia()
        {
            if (_instancia == null)
                _instancia = new PersistenciaEmpleados();


            return _instancia;

        }

        public void AgregarEmpleados(Empleados e)
        {
            /*CREATE PROCEDURE AltaEmpleados
             * @Usuario varchar(50),
             * @Contraseña varchar(50)
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("AltaEmpleados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Usuario", e.Usuario);
            cmd.Parameters.AddWithValue("@Contraseña", e.Contraseña);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            SqlParameter ParmRetorno = new SqlParameter("@Retorno", SqlDbType.Int);
            ParmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(ParmRetorno);

            
            try
            {
                // conecto a la bd
                cnn.Open();

                //verifico si hay errores
                int retorno = Convert.ToInt32(ParmRetorno.Value);
                if (retorno == -1)
                    throw new Exception("Empleados ya existe");
                else if (retorno == -2)
                    throw new Exception("Error en chequeos de datos en la tabla");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cnn.Close();
            }
        }

        public Empleados BuscarEmpleados(string Usuario)
        {

           /* CREATE PROCEDURE BuscoEmpleados 
            * @usuario varchar(50)
            * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("BuscarEmpleados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Usuario", Usuario);
            SqlParameter prmRetorno = new SqlParameter();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);


            throw new NotImplementedException();

            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            /*select*
            * From Empleados
            * where usuario = @usuario*/

            try
            {
                cnn.Open();
                if (lector.HasRows)
                {
                    lector.Read();
                    string usuario = (string)lector[0];
                    string contraseña = (string)lector[1];

                    return new Empleados(Usuario, contraseña);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cnn.Close();
            }
            return null;
        }

        public Empleados LogueoEmpleados(string Usuario)
        {
            /*CREATE PROCEDURE LogueoEmpleados
             *@usuario varchar(50)
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("LoguearEmpleados", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Usuario", Usuario);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            throw new NotImplementedException();

  
            SqlParameter ParmRetorno = new SqlParameter("@Retorno", SqlDbType.Int);
            ParmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(ParmRetorno);

            try
            {
                // conecto a la bd
                cnn.Open();

                //verifico si hay errores
                int retorno = Convert.ToInt32(ParmRetorno.Value);
                if (retorno == -1)
                    throw new Exception("Empleados ya existe");
                else if (retorno == -2)
                    throw new Exception("Error en chequeos de datos en la tabla");
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cnn.Close();
            }
        }

     }
 
  }



