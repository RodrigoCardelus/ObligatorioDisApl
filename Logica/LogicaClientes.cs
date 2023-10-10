using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;


namespace Logica
{
    internal class LogicaClientes:ILogicaClientes
    {
        
        //Singleton
        private static LogicaClientes _instancia = null;
        private LogicaClientes() { }
        public static LogicaClientes GetInstancia()
        {
            if (_instancia == null)
                _instancia = new LogicaClientes();
            return _instancia;
        }

        //operaciones
        public void Alta(Clientes unCliente)
        {
            FabricaPersistencia.GetPersistenciaCliente().Alta(unCliente);
        }

        public void Baja(Clientes unCliente)
        {
            FabricaPersistencia.GetPersistenciaCliente().Baja(unCliente);
        }

        public void Modificar(Clientes unCliente)
        {
            FabricaPersistencia.GetPersistenciaCliente().Modificar(unCliente);
        }

        public List<Clientes> ListarClientesActivos()
        {
            return (FabricaPersistencia.GetPersistenciaCliente().ListarClientesActivos());
        }

        public Clientes Buscar(int pNumCli)
        {
            return (FabricaPersistencia.GetPersistenciaCliente().Buscar(pNumCli));
        }

        void ILogicaClientes.Alta(Clientes unCliente)
        {
            throw new NotImplementedException();
        }

        void ILogicaClientes.Baja(Clientes unCliente)
        {
            throw new NotImplementedException();
        }

        void ILogicaClientes.Modificar(Clientes unCliente)
        {
            throw new NotImplementedException();
        }

        Clientes ILogicaClientes.Buscar(int pNumCli)
        {
            throw new NotImplementedException();
        }

        List<Clientes> ILogicaClientes.ListarActivos()
        {
            throw new NotImplementedException();
        }
    }
}

