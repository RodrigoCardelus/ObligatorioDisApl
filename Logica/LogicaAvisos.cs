using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    internal class LogicaAvisos:ILogicaAvisos
    {
        //singleton 
        private static LogicaAvisos _instancia = null;
        private LogicaAvisos() { }
        public static LogicaAvisos GetInstancia()
        {
            if (_instancia == null)
                _instancia = new LogicaAvisos();
            return _instancia;
        }

        //operaciones
        public void Alta(Avisos unAviso)
        {
            if (unAviso is Comunes)
                FabricaPersistencia.GetPersistenciaComunes().AgregarAvisos((Comunes)unAviso);
            else
                FabricaPersistencia.GetPersistenciaDestacados().AgregarAvisos((Destacados)unAviso);
        }

        public void Baja(Avisos unAviso)
        {
            if (unAviso is Comunes)
                FabricaPersistencia.GetPersistenciaComunes().EliminarAvisos((Comunes)unAviso);
            else
                FabricaPersistencia.GetPersistenciaDestacados().EliminarAvisos((Destacados)unAviso);
        }

        public Avisos Buscar(int pId_Avisos)
        {
            Avisos unAviso = null;
            unAviso = FabricaPersistencia.GetPersistenciaComunes().BuscarAvisos(pId_Avisos);
            if (unAviso == null)
                unAviso = FabricaPersistencia.GetPersistenciaDestacados().BuscarAvisos(pId_Avisos);
            return unAviso;
        }

        public List<Avisos> ListarTodos()
        {
            List<Avisos> lista = new List<Avisos>();
            lista.AddRange(FabricaPersistencia.GetPersistenciaComunes().ListarAvisosComunes());
            lista.AddRange(FabricaPersistencia.GetPersistenciaDestacados().ListarAvisosDestacados());
            return lista;
        }

        List<Destacados> ILogicaAvisos.ListarDestacados()
        {
            throw new NotImplementedException();
        }

        List<Destacados> ListarDestacados()
        {

            return (FabricaPersistencia.GetPersistenciaDestacados().ListarAvisosDestacados());

        }


    }
}
