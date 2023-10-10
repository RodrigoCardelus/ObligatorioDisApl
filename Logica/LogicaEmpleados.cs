using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    internal  class LogicaEmpleados: ILogicaEmpleados
    {
        //singleton 
        private static LogicaEmpleados _instancia = null;

        private LogicaEmpleados() { }

        public static LogicaEmpleados GetInstancia()
        {
            if (_instancia == null)
                _instancia = new LogicaEmpleados();


            return _instancia;

        }

        public void AgregarEmpleados(Empleados e)
        {
            IPersistenciaEmpleados FAempleados = FabricaPersistencia.GetPersistenciaEmpleados();
            FAempleados.AgregarEmpleados(e);

        }

        public Empleados BuscarEmpleados(string pUsuario)
        {
            IPersistenciaEmpleados FAempleados = FabricaPersistencia.GetPersistenciaEmpleados();
            return (FAempleados.BuscarEmpleados(pUsuario));

        }

        public Empleados LogueoEmpleados(string pUsuario)
        {
            IPersistenciaEmpleados FAempleados = FabricaPersistencia.GetPersistenciaEmpleados();
            return(FAempleados.LogueoEmpleados(pUsuario));


        }

      
    }
}
