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
    internal class PersistenciaTelefonos
    {
        //singleton 
        private static PersistenciaTelefonos instancia = null;


        private PersistenciaTelefonos() { }

        public static PersistenciaTelefonos GetInstancia()
        {
            if (instancia == null)
                instancia = new PersistenciaTelefonos();


            return instancia;

        }

        internal void Alta(EntidadesCompartidas.Telefonos unTelefono, int pCedula, SqlTransaction pTransaccion)
        {
            SqlCommand cmd = new SqlCommand("AltaTelefono", pTransaccion.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", pCedula);
            cmd.Parameters.AddWithValue("@NumTel", unTelefono.UnTelefono);
            SqlParameter ParmRetorno = new SqlParameter("@Retorno", SqlDbType.Int);
            ParmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(ParmRetorno);

            try
            {
                //determino que debo trabajar con la misma transaccion
                cmd.Transaction = pTransaccion;

                //ejecuto comando
                cmd.ExecuteNonQuery();

                //verifico si hay errores
                int retorno = Convert.ToInt32(ParmRetorno.Value);
                if (retorno == -1)
                    throw new Exception("Cliente Invalido");
                else if (retorno == 0)
                    throw new Exception("Error No Especificado");

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        internal List<Telefonos> CargoTelClientes(int pCedula)
        {
            SqlConnection cnn = new SqlConnection(Conexion.Cnn);

            SqlCommand cmd = new SqlCommand("TelefonoDeUnCliente", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", pCedula);

            List<Telefonos> ListaTels = new List<Telefonos>();

            try
            {

                //me conecto
                cnn.Open();

                //ejecuto consulta
                SqlDataReader lector = cmd.ExecuteReader();

                //verifico si hay telefonos
                if (lector.HasRows)
                {
                    while (lector.Read())
                    {
                        ListaTels.Add(new Telefonos((string)lector["NumTel"]));
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }

            return ListaTels;
        }


        internal void EliminarTelefonosDeUnCliente(int pCedula, SqlTransaction pTransaccion)
        {
            SqlCommand cmd = new SqlCommand("EliminoTelsDeCliente", pTransaccion.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", pCedula);
            SqlParameter ParmRetorno = new SqlParameter("@Retorno", SqlDbType.Int);
            ParmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(ParmRetorno);


            try
            {
                //determino que debo trabajar con la misma transaccion
                cmd.Transaction = pTransaccion;

                //ejecuto comando
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}


  


