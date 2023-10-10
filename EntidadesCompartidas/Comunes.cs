using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntidadesCompartidas
{
     public class Comunes:Avisos
    {
        #region Atributos
        string texto;
        #endregion

        #region Propiedades
          public string Texto
         {

            get { return texto; }
            set
            {
                if (value.Length > 50) 
                {

                    throw new Exception("El largo del texto no puede ser mayor a 50 caracteres");

                }
                texto = value;
            }
        }
        #endregion

        #region Constructores
        public Comunes(int pIdAvisos, Categorias pIdCategorias, DateTime pFecha_Inicial, DateTime pFecha_Final, Empleados pUsuario, Clientes pCedula, string pTexto)
            :base(pIdAvisos, pIdCategorias, pFecha_Inicial, pFecha_Final, pUsuario, pCedula)
        {

            Texto = pTexto;

        }

        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "\n\nEl texto es: " + texto + base.ToString();

        }

        #endregion


    }
}
