using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace Logica
{
    public interface ILogicaClientes
    {



        void Alta(EntidadesCompartidas.Clientes unCliente);
        void Baja(EntidadesCompartidas.Clientes unCliente);
        void Modificar(EntidadesCompartidas.Clientes unCliente);
        EntidadesCompartidas.Clientes Buscar(int pNumCli);
        List<EntidadesCompartidas.Clientes> ListarActivos();




    }
}
