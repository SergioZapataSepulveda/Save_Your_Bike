using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using System.IO;
using SBK.Negocio; 

namespace WebPresentacion
{
    public partial class NuevoRegistro : System.Web.UI.Page
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






                txtId.Enabled = false;
                txtUser.Enabled = false;
                txtNombres.Enabled = false;
                txtApellidos.Enabled = false;


                ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
                string auxUserName = System.Web.HttpContext.Current.User.Identity.Name;
                int aux_ID = servicio.ID_desde_LogUser(auxUserName);
                try
                {
                    XmlSerializer serial = new XmlSerializer(typeof(Usuario));
                    StringReader lector = new StringReader(servicio.Read(aux_ID));
                    Usuario user = (Usuario)serial.Deserialize(lector);
                    txtId.Text = user.Id.ToString();
                    txtUser.Text = user.User;
                    txtPass1.Text = user.Pass;
                    txtRut.Text = user.Rut;
                    txtNombres.Text = user.Nombres;
                    txtApellidos.Text = user.Apellidos;
                    txtCorreo.Text = user.Correo;
                    ddlTipo.Text = user.Tipo;
                    txtEdad.Text = user.Edad.ToString();

                    lvlMensaje.Text = " ";
                }
                catch (Exception)
                {
                    lvlMensaje.Text = " ";
                }
                servicio.Close();
            }
        }

  

        
        /*
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
            try
            {
                XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
                StringWriter escritor = new StringWriter();
                Usuario user = new Usuario()
                {
                     Id          = int.Parse(servicio.R_CantidadUsuarios()) + 1,
                     User        = string.Format("{0}.{1}",  txtApellidos.Text.Substring(0, 2), txtNombres.Text.Substring(0, 3)),
                     //User        = txtNombres.Text,
                     Pass        = txtPass.Text,
                     Rut         = txtRut.Text,
                     Nombres     = txtNombres.Text,
                     Apellidos   = txtApellidos.Text,
                     Correo      = txtCorreo.Text,
                     Tipo        = txtTipo.Text,
                     Edad        = int.Parse(txtEdad.Text)
                };
                serializador.Serialize(escritor, user);
                if (!servicio.Create(escritor.ToString()))
                {
                    throw new ApplicationException("No se pudo crear un nuevo Usuario, Revise los datos!!!");
                }
                lvlMensaje.Text = "Usuario creado correctamente";
            }
            catch (Exception ex)
            {
                lvlMensaje.Text = ex.Message;
            }
            servicio.Close(); 
        }
        




        protected void btnRead_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
            string auxUserName = System.Web.HttpContext.Current.User.Identity.Name;
            int aux_ID = servicio.ID_desde_LogUser(auxUserName);
            try
            {
                XmlSerializer serial = new XmlSerializer(typeof(Usuario));
                StringReader lector = new StringReader(servicio.Read(aux_ID));
                Usuario user = (Usuario)serial.Deserialize(lector);
                txtId.Text        = user.Id.ToString();
                txtUser.Text      = user.User;
                txtPass.Text      = user.Pass;
                txtRut.Text       = user.Rut;
                txtNombres.Text   = user.Nombres;
                txtApellidos.Text = user.Apellidos;
                txtCorreo.Text    = user.Correo;
                txtTipo.Text      = user.Tipo;
                txtEdad.Text      = user.Edad.ToString();

                lvlMensaje.Text = "Usuario Encontrado";
            }
            catch (Exception)
            {
                lvlMensaje.Text = "Usuario No Existe";
            }
            servicio.Close();
        }
         */




        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
            try
            {
                XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
                StringWriter escritor = new StringWriter();
                Usuario user = new Usuario()
                {
                    Id = int.Parse(txtId.Text),
                    User = string.Format("{0}.{1}", txtApellidos.Text.Substring(0, 2), txtNombres.Text.Substring(0, 3)),
                    Pass = txtPass1.Text,
                    Rut = txtRut.Text,
                    Nombres = txtNombres.Text,
                    Apellidos = txtApellidos.Text,
                    Correo = txtCorreo.Text,
                    Tipo = ddlTipo.SelectedValue,
                    Edad = int.Parse(txtEdad.Text)
                };
                serializador.Serialize(escritor, user);
                if (!servicio.Update(escritor.ToString()))
                {
                    throw new ApplicationException("No se pudo Actualizar, Revise los datos!!!");
                }
                lvlMensaje.Text = "Usuario Actualizado correctamente";
            }
            catch (Exception ex)
            {
                lvlMensaje.Text = ex.Message;
            }
            servicio.Close();
        }





        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client servicio = new ServiceReference1.Service1Client();
            try
            {
                XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
                
                if (!servicio.Delete(int.Parse(txtId.Text)))
                {
                    throw new ApplicationException("No se pudo eliminar, Usuario ya no existe en los registros");
                }
                lvlMensaje.Text = "Usuario Eliminado correctamente";
                btnDelete.Enabled = false;
                btnUpdate.Enabled = false; 
            }

            
            catch (Exception ex)
            {
                lvlMensaje.Text = ex.Message;
            }

            
            servicio.Close();
        }
    }
}