using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public interface ILogicaEmpleados
    {
        void AgregarEmpleados(Empleados e);

        Empleados BuscarEmpleados(string pUsuario);

        Empleados LogueoEmpleados(string pUsuario);



    }
}
