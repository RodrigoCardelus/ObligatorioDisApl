using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntidadesCompartidas
{
    public class Categorias
    {
        #region Atributos
        string id_categorias;
        string nombre;
 
        #endregion

        #region Propiedades
        public string ID_Categorias
        {
            get { return id_categorias; }
            set
            {
                if (value.Length != 3)
                {
                    throw new Exception("El id de categorias tiene que tener 3 caracteres de largo");

                }

                id_categorias = value;

            }
        }

        
        public string Nombre
        {

            get { return nombre;}
            set
            {
                if ((value.Length > 50) && (value == " "))
                {

                    throw new Exception("El largo del nombre no puede ser mayor a 50");

                }

            nombre = value;

            }
        }

     
        #endregion

        #region Constructores
        public Categorias(string pID_Categorias, string pNombre)
        {
            ID_Categorias = pID_Categorias;
            Nombre = pNombre;
         
       }
        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "\nEl id de categorias es: " + id_categorias + "\nEl nombre es: " + nombre;
        }
        #endregion

    }

}
