using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;

namespace Persistencia
{
    public interface IPersistenciaComunes
    {
        void AgregarAvisos(Comunes C);

        void EliminarAvisos(Comunes C);

        void ModificarAvisos(Comunes C);

        Comunes BuscarAvisos(int pID_Avisos);

        List<Comunes> ListarComunes();

        List<Comunes> ListarAvisosComunes();

        
    }
}
