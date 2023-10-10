using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace Logica
{
    public class FabricaLogica
    {

        public static ILogicaAvisos GetLogicaAvisos()
        {
            return (LogicaAvisos.GetInstancia());
        }


        public static ILogicaClientes GetLogicaClientes()
        {
            return (LogicaClientes.GetInstancia());
        }


        public static ILogicaEmpleados GetLogicaEmpleados()
        {
            return (LogicaEmpleados.GetInstancia());
        }

       

        public static ILogicaCategorias getLogicaCategorias()
        {

            return (LogicaCategorias.GetInstancia());

        }


    }
}

