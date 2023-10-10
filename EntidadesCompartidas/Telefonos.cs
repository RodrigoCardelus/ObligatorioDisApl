using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntidadesCompartidas
{
    public class Telefonos
    {
        #region Atributos
        string unTelefono;
        
        #endregion

        #region Propiedades      
        public string UnTelefono
        {
            get { return unTelefono; }
            set
            {
               if (value.Trim().Length > 12)
                   throw new Exception("El el numero debe ser mayor a 12 digitos");

                if (value.Trim().Length == 0)
                   throw new Exception("El telefono debe tener algo");

                try
                {
                    Convert.ToInt64(value);
                }
                catch
                {
                    throw new Exception("El telefono solo puede tener numeros");
                }
            }
        }
        

        #endregion

        #region Constructores
        public Telefonos(string pUnTelefono)
        {
            UnTelefono = pUnTelefono;
           
        }
        #endregion


    }
}

