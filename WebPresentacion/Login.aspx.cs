using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Xml.Serialization;
using System.IO;
using SBK.Negocio;




namespace WebPresentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItemCollection llenarDDL = new ListItemCollection();
                llenarDDL.Add("Estudiante");
                llenarDDL.Add("Funcionario");
                llenarDDL.Add("Otros");

                ddlTipo.DataSource = llenarDDL;
                ddlTipo.DataBind();
            }
        }


        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();

            /* Utiliza el modelo de autenticación con las credenciales del Web.config*/
            if (servicio.ValidarLogin(Login1.UserName, Login1.Password))
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            }
        }





        protected void btnCreate_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
            try
            {
                XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
                StringWriter escritor = new StringWriter();
                Usuario user = new Usuario()
                {
                    Id = int.Parse(servicio.R_CantidadUsuarios()) + 1,
                    User = string.Format("{0}.{1}", txtApellidos.Text.Substring(0, 2), txtNombres.Text.Substring(0, 3)),
                    //User        = txtNombres.Text,
                    Pass = txtPass.Text,
                    Rut = txtRut.Text,
                    Nombres = txtNombres.Text,
                    Apellidos = txtApellidos.Text,
                    Correo = txtCorreo.Text,
                    Tipo = ddlTipo.SelectedValue,
                    Edad = int.Parse(txtEdad.Text)
                };
                serializador.Serialize(escritor, user);
                if (!servicio.Create(escritor.ToString()))
                {
                    throw new ApplicationException("No se pudo crear un nuevo Usuario, Revise los datos!!!");
                }
                lblMensaje1.Text = string.Format("Tu Nombre de usuario es: {0}.{1}", txtApellidos.Text.Substring(0, 2), txtNombres.Text.Substring(0, 3));
                lblMensaje2.Text = "¡¡ Ahora ya puedes Ingresar !!";
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = ex.Message;
            }
            servicio.Close();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length >= 3;
    
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length >= 3;
        }
    }
}





