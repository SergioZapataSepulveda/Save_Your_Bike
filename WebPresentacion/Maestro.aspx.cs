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
    public partial class Maestro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos(); 
        }

        private void CargarDatos()
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();

           


            XmlSerializer aux = new XmlSerializer(typeof(List<SBK.Negocio.Registro>));
            StringReader lector = new StringReader(servicio.ListarRegistro());
            gvMaestro.DataSource = (List<SBK.Negocio.Registro>)aux.Deserialize(lector);
            gvMaestro.DataBind();
        }



        protected void gvMaestro_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMaestro.PageIndex = e.NewPageIndex;
            CargarDatos();
        }
    }
}