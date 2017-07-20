using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using SBK.Negocio;
using System.Xml.Serialization;
using System.IO;



namespace SBK.Servicios
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }



        public string ListarUsuario()
        {
            XmlSerializer serializador = new XmlSerializer(typeof(List<Usuario>));
            Colecciones colns = new Colecciones();
            StringWriter salida = new StringWriter();
            serializador.Serialize(salida, colns.ListarUsuario());
            return salida.ToString();
        }



        public string ListarRegistro()
        {
            XmlSerializer serializador = new XmlSerializer(typeof(List<Registro>));
            Colecciones colns = new Colecciones();
            StringWriter salida = new StringWriter();
            serializador.Serialize(salida, colns.ListarRegistro());
            return salida.ToString();
        }




        public bool ValidarLogin(string LOGusuario, string LOGpassword)
        {
            Usuario aux = new Usuario();
            return aux.ValidarLogin(LOGusuario, LOGpassword);
        }



        public string ListarRegistroUser(int _id)
        {
            XmlSerializer serializador = new XmlSerializer(typeof(List<Registro>));
            Colecciones colns = new Colecciones();
            StringWriter salida = new StringWriter();
            serializador.Serialize(salida, colns.ListarRegistro(_id));
            return salida.ToString();
        }


        public int ID_desde_LogUser(string LOGusuario)
        {
            Usuario aux = new Usuario();
            return aux.ID_desde_LogUser(LOGusuario);
        }


        public string Nombre_desde_LogUser(string LOGusuario)
        {
            Usuario aux = new Usuario();
            return aux.Nombre_desde_LogUser(LOGusuario);
        }


        public bool Create(string _id)
        {
            XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
            StringReader lector = new StringReader(_id);
            Usuario nuevoUsuario = (Usuario)serializador.Deserialize(lector);
            return nuevoUsuario.Create();

        }

        public string Read(int _id)
        {
            XmlSerializer serialziador = new XmlSerializer(typeof(Usuario));
            Usuario user = new Usuario() { Id = _id };
            StringWriter salida = new StringWriter();
            user.Read();
            serialziador.Serialize(salida, user);
            return salida.ToString(); 
        }

        public bool Update(string _id)
        {
            XmlSerializer serializador = new XmlSerializer(typeof(Usuario));
            StringReader lector = new StringReader(_id);
            Usuario user = (Usuario)serializador.Deserialize(lector);
            return user.Update(); 
        }

        public bool Delete(int _id)
        {
            Usuario user = new Usuario() { Id = _id };
            return user.Delete();
        }



        // Reportes Estadisticos en funcion de la Base de Datos 
        public string R_CantidadUsuarios()
        {
            Reportes rep = new Reportes();
            return rep.R_CantidadUsuarios().ToString(); 
        }


        public string R_CantidadEstudiante()
        {
            Reportes rep = new Reportes();
            return rep.R_CantidadEstudiante().ToString(); 
        }

        public string R_CantidadFuncionario() 
        {
            Reportes rep = new Reportes();
            return rep.R_CantidadFuncionario().ToString(); 
        }


        public string R_UsuarioMasActivo()
        {
            Reportes rep = new Reportes();
            return rep.R_UsuarioMasActivo().ToString(); 
        }


        public string R_CantidadRegistrosMaxUser()
        {
            Reportes rep = new Reportes();
            return rep.R_CantidadRegistrosMaxUser().ToString(); 
        }

        public string R_PromedioDeRegistros()
        {
            Reportes rep = new Reportes();
            return rep.R_PromedioDeRegistros().ToString(); 
        }
    }
}
