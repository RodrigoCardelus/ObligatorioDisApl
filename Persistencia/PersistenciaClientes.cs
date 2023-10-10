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
    internal class PersistenciaClientes : IPersistenciaClientes
    {
             
        //singleton
        private static PersistenciaClientes _instancia = null;
        private PersistenciaClientes() { }
        public static PersistenciaClientes GetInstancia()
        {
            if (_instancia == null)
                _instancia = new PersistenciaClientes();
            return _instancia;
        }



        public void Alta(Clientes unCliente)
        {

            /*CREATE PROCEDURE AltaClientes
             * @Cedula int,
             * @Nombre varchar(50),
             * @Direccion varchar(50) 
             * AS*/


            SqlConnection _cnn = new SqlConnection(Conexion.Cnn);

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            SqlCommand cmd = new SqlCommand("AltaClientes", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", unCliente.Cedula);
            cmd.Parameters.AddWithValue("@Nombre", unCliente.Nombre);
            cmd.Parameters.AddWithValue("@Direccion", unCliente.Direccion);

            SqlParameter ParmRetorno = new SqlParameter("@Retorno", SqlDbType.Int);
            ParmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(ParmRetorno);

            SqlTransaction miTransaccion = null;

            try
            {
                // conecto a la bd
                cnn.Open();

                //determino que voy a trabajar en una unica transaccion
                miTransaccion = cnn.BeginTransaction();

                //ejecuto comando de alta del cliente en la transaccion
                cmd.Transaction = miTransaccion;
                cmd.ExecuteNonQuery();

                //verifico si hay errores
                int retorno = Convert.ToInt32(ParmRetorno.Value);
                if (retorno == -1)
                    throw new Exception("Cliente ya existente");
                else if (retorno == -2)
                    throw new Exception("Error en chequeos de datos en la tabla");

                //si llego aca es pq pude dar de alta al cliente

                //genero alta para sus telefonos
                foreach (EntidadesCompartidas.Telefonos unTel in unCliente.ListaTelefonos)
                {
                    PersistenciaTelefonos.GetInstancia().Alta(unTel, unCliente.Cedula, miTransaccion);
                }

               

                //si llegue aca es pq no hubo problemas con los telefonos
                miTransaccion.Commit();
            }
            catch (Exception ex)
            {
                miTransaccion.Rollback();
                throw new Exception(ex.Message);
            }
            finally
            {
                _cnn.Close();
            }

        }

        public void Baja(Clientes unCliente)
        {
           /* CREATE PROCEDURE BajaClientes 
            * @Cedula int
            *  as*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);

            SqlCommand cmd = new SqlCommand("ClienteBaja", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", unCliente.Cedula);
            SqlParameter retorno = new SqlParameter("@Retorno", System.Data.SqlDbType.Int);
            retorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);

            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                if ((int)retorno.Value == -1)
                    throw new Exception("El cliente tiene cuenta asociada");
                else if ((int)retorno.Value == -2)
                    throw new Exception("Error en Eliminar los Telefonos del Cliente");
                else if ((int)retorno.Value == -3)
                    throw new Exception("Error en Baja");
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

        public void Modificar(Clientes unCliente)
        {
            /*CREATE PROCEDURE ModClientes
             * @Cedula int,
             * @Nombre varchar(50), 
             * @Direccion varchar(50)
             *  AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);

            SqlCommand cmd = new SqlCommand("ClienteModificar", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", unCliente.Cedula);
            cmd.Parameters.AddWithValue("@Nombre", unCliente.Nombre);
            cmd.Parameters.AddWithValue("@Direccion", unCliente.Direccion);
            cmd.Parameters.AddWithValue("@Lista", unCliente.ListaTelefonos);

            SqlParameter retorno = new SqlParameter("@Retorno", System.Data.SqlDbType.Int);
            retorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);

            SqlTransaction miTransaccion = null;

            try
            {
                // conecto a la bd
                cnn.Open();

                //determino que voy a trabajar en una unica transaccion
                miTransaccion = cnn.BeginTransaction();

                //elimino todos los telefonos anteriores
            

                PersistenciaTelefonos.GetInstancia().EliminarTelefonosDeUnCliente(unCliente.Cedula, miTransaccion);


                //mando a modificar al cliente
                cmd.Transaction = miTransaccion;
                cmd.ExecuteNonQuery();
                if ((int)retorno.Value == -1)
                    throw new Exception("El cliente no existe");
                else if ((int)retorno.Value == -2)
                    throw new Exception("Error en Modificacion del cliente");

                //si llego aca es pq pude modificar al cliente

                //genero alta para sus telefonos
                foreach (EntidadesCompartidas.Telefonos unTel in unCliente.ListaTelefonos)
                {
                    PersistenciaTelefonos.GetInstancia().Alta(unTel, unCliente.Cedula, miTransaccion);
                }

                //si llegue aca es pq no hubo problemas con los telefonos
                miTransaccion.Commit();
            }
            catch (Exception ex)
            {
                miTransaccion.Rollback();
                throw ex;
            }
            finally
            {
                cnn.Close();
            }
        }

        public Clientes Buscar(int pCedula)
        {
          
             /* CREATE PROCEDURE ClientesBuscar
              * @cedula int
              *  AS*/

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            Clientes unCliente = null;
         

            SqlCommand cmd = new SqlCommand("BuscarCliente", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", pCedula);

            /*Select*
            from Clientes
            where cedula = @cedula*/
            try
            {
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();
                if (lector.HasRows)
                {
                    lector.Read();

                    unCliente = new Clientes(pCedula, (string)lector["Nombre"], (string)lector["Direccion"], PersistenciaTelefonos.GetInstancia().CargoTelClientes(pCedula));

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
            return unCliente;
        }

        public List<Clientes> ListarClientesActivos()
        {
           /* CREATE PROCEDURE ListoClientesActivos AS */

            SqlConnection cnn = new SqlConnection(Conexion.Cnn);
            Clientes unCliente = null;
            List<Clientes> lista = new List<Clientes>();

            SqlCommand cmd = new SqlCommand("ListoClientesActivos", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            try
            {
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();
                if (lector.HasRows)
                {
                    while (lector.Read())
                    {

                        lector.Read();
                      
                        unCliente = new Clientes((int)lector["Cedula"], (string)lector["Nombre"], (string)lector["Direccion"], PersistenciaTelefonos.GetInstancia().CargoTelClientes((int)lector["Cedula"]));



                        lista.Add(unCliente);
                    }
                } 
                lector.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cnn.Close();
            }
            return lista;
        }


    }
}


    
