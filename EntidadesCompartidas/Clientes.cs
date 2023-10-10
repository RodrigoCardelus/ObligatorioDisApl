using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntidadesCompartidas
{
    public class Clientes
    {
        #region Atributos
        int cedula;
        string nombre;
        string direccion;
        List<Telefonos> listaTelefonos = new List<Telefonos>();
      
        #endregion

        #region Propiedades
        public int Cedula
        {

            get { return cedula;}
            set
            {
               if(value > 7)
                {
                    throw new Exception("La cedula no puede tener mas de 7 caracteres");
                }

             cedula = value;

            }
        }

        public string Nombre
        {

            get { return nombre; }
            set
            {
                if (value == " " )
                {

                    throw new Exception("El nombre del cliente no puede estar vacio");

                }
                nombre = value;
            }
        }

        public string Direccion
        {

            get { return direccion; }
            set
            {
                if(value == " ") 
                {

                    throw new Exception("La direccion del cliente no puede estar vacio");

                }
                direccion = value;           
                       
            }
        }

        public List<Telefonos> ListaTelefonos
        {
            get { return listaTelefonos; }
            set { ListaTelefonos = value; }
        }

        #endregion

        #region Constructor
        public Clientes(int pCedula, string pNombre, string pDireccion, List<Telefonos> pLista)
        {
            Cedula = pCedula;
            Nombre = pNombre;
            Direccion = pDireccion;
            ListaTelefonos = pLista;

        }

        #endregion

        #region Operaciones
        public void AgregarTelefono(string pUnTel)
        {
            listaTelefonos.Add(new Telefonos(pUnTel));
        }

        public override string ToString()
        {
            return "\n\nLa cedula es: " + cedula + "\nEl nombre es: " + nombre + "\nLa direccion es : " + direccion;
        }
        #endregion

    }
}
