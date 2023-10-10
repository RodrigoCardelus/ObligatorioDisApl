using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public interface ILogicaAvisos
    {
        void Alta(Avisos unAviso);
        void Baja(Avisos unAviso);
        Avisos Buscar(int pId_Avisos);
        List<Avisos> ListarTodos();
        List<Destacados> ListarDestacados();


    }
}
