using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
     public interface IPersistenciaDestacados
    {
        void AgregarAvisos(Destacados D);

        void EliminarAvisos(Destacados D);

        void ModificarAvisos(Destacados D);

        Destacados BuscarAvisos(int pID_Avisos);

        List<Destacados> ListarDestacados();

        List<Destacados> ListarAvisosDestacados();
    }
}
