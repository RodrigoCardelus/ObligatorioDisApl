using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public interface ILogicaDestacados
    {
        void AgregarAvisos(Destacados D);

        void EliminarAvisos(Destacados D);

        void ModificarAvisos(Destacados D);

        Destacados BuscarAvisos(int pID_Avisos);

        List<Destacados> ListarDestacados();


    }
}
