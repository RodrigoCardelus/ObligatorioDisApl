using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;


namespace EntidadesCompartidas
{
    public class Empleados
    {
        #region Atributos
        string usuario;
        string contraseña;
     
        #endregion

        #region Propiedades
        public string Usuario
        {
            get { return usuario; }
            set
            {
                if ((value == " ") && (value.Length == 10))
                {

                    throw new Exception("El usuario no puede estar vacio y tiene que tener 10 caracteres de largo para loguarse");

                }
                usuario = value;
            }
        }
        
        public string Contraseña
        {
           get { return contraseña; }
           set
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(value, "[A-Z]{5}[0-9]{2}"))
                    contraseña = value;
                else
                    throw new Exception("Formato de contraseña no valido");

            }

        }
        #endregion

        #region Constructores
        public Empleados(string pUsuario, string pContraseña)
        {
            Usuario = pUsuario;
            Contraseña = pContraseña;
        }
        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "\n\nEl usuario del Empleado es: " + usuario + "\nLa contraseña del Empleado es :" + contraseña;

        }
        #endregion

    }
}
