using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
    public interface IPersistenciaCategorias
    {
        void AgregarCategorias(Categorias ca);

        void EliminarCategorias(Categorias ca);

        void ModificarCategorias(Categorias ca);

        Categorias BuscarCategoriasActivas(string ID_Categorias);

        List<Categorias> ListarCategoriasActivas();



    }
}
