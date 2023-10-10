using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntidadesCompartidas
{
    public class Destacados: Avisos
    {
        #region Atributos
        string descripcion;
        int precio;
        #endregion

        #region Propiedades

        public string Descripcion
        {
            get { return descripcion; }
            set
            {
                if (value.Length > 50)
                {

                    throw new Exception("La descripcion no puede tener mas de 50 caracteres de largo");

                }
                descripcion = value;
            }
        }
        #endregion

        public int Precio
        {
            get { return precio; }
            set
            {
                if(value > 0)
                {
                    throw new Exception("El precio del articulo del aviso destacado debe valer mas de 0 pesos");

                }
                precio = value;
            }
       
        }


        #region Constructores
        public Destacados(int pID_Avisos, Categorias pIdCategorias, DateTime pFechaInicial, DateTime pFechaFinal, Empleados pUsuario, Clientes pCedula, string pDescripcion, int pPrecio)
            :base (pID_Avisos, pIdCategorias, pFechaInicial, pFechaFinal, pUsuario, pCedula)
        {
            Descripcion = pDescripcion;
            Precio = pPrecio;

        }
        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "\n\nLa descripcion es: " + descripcion + "\n\nEl precio es: " + precio + base.ToString();
        
        }
        #endregion

    }
}
