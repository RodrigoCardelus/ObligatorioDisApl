using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class AltaEmpleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Habilitar(true);


    }

    void Habilitar(bool habilita)
    {
        btnBuscar.Enabled = habilita;
        txtUsuario.Enabled = habilita;
        txtContraseña.Enabled = !habilita;


    }
    protected void btnAlta_Click(object sender, EventArgs e)
    {
        try
        {
            string usuario = txtUsuario.Text;
            string contraseña = txtContraseña.Text;

            EntidadesCompartidas.Empleados unEmpleado = null;
            unEmpleado = new EntidadesCompartidas.Empleados(usuario,contraseña);
            //FabricaLogica.GetLogicaEmpleados().AgregarEmpleados(unEmpleado);

            btnLimpiar_Click(sender, e);
            lblError.Text = "Se agregó correctamente.";


        }
        catch (Exception ex)
        { lblError.Text = ex.Message; }

    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        Habilitar(true);
        txtUsuario.Text = string.Empty;
        txtContraseña.Text = string.Empty;
        lblError.Text = string.Empty;


    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Habilitar(true);

        string usuario = txtUsuario.Text;



        EntidadesCompartidas.Empleados unEmpleado = null;
        unEmpleado = new EntidadesCompartidas.Empleados(usuario, "");
        //FabricaLogica.GetLogicaEmpleados().BuscarEmpleados(unEmpleado.Usuario);

        if ( unEmpleado == null)
        {
            Habilitar(false);
            btnAlta.Enabled = false;
            btnLogueo.Enabled = false;
            lblError.Text = " No se ha encontrado el usuario del empleado " + usuario.ToString() + ". Puede agregar el usuario .";
        }
        else
        {
            Habilitar(false);
            txtUsuario.Text = unEmpleado.Usuario;
            txtContraseña.Text = unEmpleado.Contraseña;
            lblError.Text = "Se encontre el usario del empleado " + unEmpleado.Usuario + ".";


        }
    }
    protected void btnLogueo_Click(object sender, EventArgs e)
    {
        try
        {





        }
        catch (Exception ex)
        { lblError.Text = ex.Message; }

    }
}
