using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using SBK.Negocio; 

namespace WebPresentacion
{
    public partial class Ingeso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();


                txtRep1.Text = servicio.R_CantidadUsuarios();
    
                txtRep2.Text = servicio.R_CantidadEstudiante();
       
                txtRep3.Text = servicio.R_CantidadFuncionario();


                txtRep4.Text = servicio.R_UsuarioMasActivo();


                txtRep5.Text = servicio.R_CantidadRegistrosMaxUser();

                txtRep6.Text = servicio.R_PromedioDeRegistros();
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                servicio.Close();
            
          
            
            }
        }

        

        
    }
}