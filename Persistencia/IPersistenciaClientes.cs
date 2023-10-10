using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
    public interface IPersistenciaClientes
    {
        List<Clientes> ListarClientesActivos();
        void Alta(EntidadesCompartidas.Clientes unCliente);
        void Baja(EntidadesCompartidas.Clientes unCliente);
        void Modificar(EntidadesCompartidas.Clientes unCliente);
        EntidadesCompartidas.Clientes Buscar(int pCedula);
 
       

    }
}
