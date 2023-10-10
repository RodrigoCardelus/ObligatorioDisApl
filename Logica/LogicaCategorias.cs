using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    internal class LogicaCategorias :ILogicaCategorias
    {
        //singleton 
        private static LogicaCategorias _instancia = null;

        private LogicaCategorias() { }

        public static LogicaCategorias GetInstancia()
        {
            if (_instancia == null)
                _instancia = new LogicaCategorias();


            return _instancia;

        }

        public void AgregarCategorias(Categorias ca)
        {

            IPersistenciaCategorias FAagregarCategorias = FabricaPersistencia.GetPersistenciaCategorias();
            FAagregarCategorias.AgregarCategorias(ca);

        }


        public void EliminarCategorias(Categorias ca)
        {
            IPersistenciaCategorias FAeliminarCategorias = FabricaPersistencia.GetPersistenciaCategorias();
            FAeliminarCategorias.EliminarCategorias(ca);

        }

        public void ModificarCategorias(Categorias ca)
        {
            IPersistenciaCategorias FAmodificarCategorias = FabricaPersistencia.GetPersistenciaCategorias();
            FAmodificarCategorias.ModificarCategorias(ca);

        }


        public Categorias BuscarCategoriasActivas(string pID_Categorias)
        {
            IPersistenciaCategorias FAbuscarCategoriasActivas = FabricaPersistencia.GetPersistenciaCategorias();
            return(FAbuscarCategoriasActivas.BuscarCategoriasActivas(pID_Categorias));


        }

        public List<Categorias> ListarCategoriasActivas()
        {

            IPersistenciaCategorias FAlistarCategorias = FabricaPersistencia.GetPersistenciaCategorias();
            return (FAlistarCategorias.ListarCategoriasActivas());

        }

      
    }
}
