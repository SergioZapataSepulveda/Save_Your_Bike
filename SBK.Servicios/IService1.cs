using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace SBK.Servicios
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        string GetData(int value);

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        // TODO: agregue aquí sus operaciones de servicio


        [OperationContract]
        string ListarRegistro();


        [OperationContract]
        string ListarUsuario();


        [OperationContract]
        string ListarRegistroUser(int _id);


        [OperationContract]
        bool ValidarLogin(string LOGusuario, string LOGpassword);


        [OperationContract]
        int ID_desde_LogUser(string LOGusuario);

        [OperationContract]
        string Nombre_desde_LogUser(string LOGusuario);







        [OperationContract]
        string Read(int id);

        [OperationContract]
        bool Create(string id);

        [OperationContract]
        bool Update(string id);

        [OperationContract]
        bool Delete(int id);






        [OperationContract]
        string R_CantidadUsuarios();

        [OperationContract]
        string R_CantidadEstudiante();

        [OperationContract]
        string R_CantidadFuncionario();

        [OperationContract]
        string R_UsuarioMasActivo();

        [OperationContract]
        string R_CantidadRegistrosMaxUser();

        [OperationContract]
        string R_PromedioDeRegistros();
         


    }


    // Utilice un contrato de datos, como se ilustra en el ejemplo siguiente, para agregar tipos compuestos a las operaciones de servicio.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
