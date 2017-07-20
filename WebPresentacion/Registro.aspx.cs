using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using SBK.Negocio;



namespace WebPresentacion
{
    public partial class Registro : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();
            }
        }





        private void CargarDatos()
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();

            string auxUserName = System.Web.HttpContext.Current.User.Identity.Name;
            int aux_ID = servicio.ID_desde_LogUser(auxUserName);


            XmlSerializer aux = new XmlSerializer(typeof(List<SBK.Negocio.Registro>));
            StringReader lector = new StringReader(servicio.ListarRegistroUser(aux_ID));
            gvRegistro.DataSource = (List<SBK.Negocio.Registro>)aux.Deserialize(lector);
            gvRegistro.DataBind();


            string URL = string.Format("~/imagenes/QR/{0}.jpeg",auxUserName); 
            imgQR.ImageUrl = URL;

 

        }





        protected void gvRegistro_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvRegistro.PageIndex = e.NewPageIndex;
            CargarDatos();

        }

        
      
    }
}