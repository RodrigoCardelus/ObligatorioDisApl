using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
    public class FabricaPersistencia
    {
        public static IPersistenciaComunes GetPersistenciaComunes()
        {

            return (PersistenciaComunes.GetInstancia());

        }

        public static IPersistenciaDestacados GetPersistenciaDestacados()
        {

            return (PersistenciaDestacados.GetInstancia());


        }
        
        public static IPersistenciaEmpleados GetPersistenciaEmpleados()
        {

            return (PersistenciaEmpleados.GetInstancia());

        }

       

        public static IPersistenciaClientes GetPersistenciaCliente()
        {
            return (PersistenciaClientes.GetInstancia());
        }
        public static IPersistenciaCategorias GetPersistenciaCategorias()
        {

            return (PersistenciaCategorias.GetInstancia());

        }



    }
}
