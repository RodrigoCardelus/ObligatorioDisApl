using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
    public interface IPersistenciaEmpleados
    {
        void AgregarEmpleados(Empleados e);

        Empleados BuscarEmpleados(string pUsuario);

        Empleados LogueoEmpleados(string pUsuario);
       
    }
}
