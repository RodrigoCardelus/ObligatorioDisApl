using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;



public partial class AvisosComunes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Habilitar(true);


    }
    void Habilitar(bool habilita)
    {

        btnBuscar.Enabled = habilita;
        txtID_Avisos.Enabled = habilita;
        txtIdCategorias.Enabled = !habilita;
        txtFechaInicial.Enabled = !habilita;
        txtFechaFinal.Enabled = !habilita;
        txtUsuario.Enabled = !habilita;
        txtCedula.Enabled = !habilita;
        txtTexto.Enabled = !habilita;

    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
           

            btnLimpiar_Click(sender, e);
            lblError.Text = "Se agregó correctamente.";


        }
        catch (Exception ex)
        { lblError.Text = ex.Message; }



    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        Habilitar(true);
        txtID_Avisos.Text = string.Empty;
        txtFechaInicial.Text = string.Empty;
        txtFechaFinal.Text = string.Empty;
        txtUsuario.Text = string.Empty;
        txtCedula.Text = string.Empty;
        txtTexto.Text = string.Empty;


    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        

        btnLimpiar_Click(null, null);
        lblError.Text = "Se ha eliminado correctamente el aviso comun con su id aviso" + id_Avisos + ".";


    }



    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        Habilitar(true);
        


           lblError.Text = "Se encontro el aviso comun con su id avisos " + id_Avisos + ".";

        
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
       

    }
}
