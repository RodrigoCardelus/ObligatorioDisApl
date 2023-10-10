using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class ClientesABM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Cliente"] = null;
            txtCedula.Enabled = true;
            txtCedula.ReadOnly = false;
            Habilitar(true);
        }
    }
    void Habilitar(bool habilita)
    {
        btnBuscar.Enabled = habilita;
        txtCedula.Enabled = habilita;
        txtNombre.Enabled = !habilita;
        txtDireccion.Enabled = !habilita;
        txtActivo.Enabled = !habilita;

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {

        try
        {
            EntidadesCompartidas.Clientes unCliente = null;
            unCliente = Logica.FabricaLogica.GetLogicaClientes().Buscar(Convert.ToInt32(txtCedula.Text));
          
          


            if (unCliente == null)
            {
                btnAgregar.Enabled = true;
            }
            else
            {
                btnModificar.Enabled = true;
                btnEliminar.Enabled = true;
                Session["Cliente"] = unCliente;
                txtCedula.Text = unCliente.Cedula.ToString();
                txtNombre.Text = unCliente.Nombre;
                txtDireccion.Text = unCliente.Direccion;
                
                
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
             EntidadesCompartidas.Clientes unCliente = null;
            List<EntidadesCompartidas.Telefonos> ListaTels = new List<EntidadesCompartidas.Telefonos>();

            unCliente = new EntidadesCompartidas.Clientes(0, txtNombre.Text.Trim(), txtDireccion.Text.Trim(),ListaTels);
            Logica.FabricaLogica.GetLogicaClientes().Alta(unCliente);
           
            

            lblError.Text = "Alta con Exito";
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}