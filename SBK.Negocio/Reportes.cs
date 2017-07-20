using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SBK.Datos; 

namespace SBK.Negocio
{
    public class Reportes
    {

        public int R_CantidadUsuarios()
        {
            return ModeloBD.Instanciar.Usuario.Count(); 
        }



        public int R_CantidadEstudiante()
        {
            return ModeloBD.Instanciar.Usuario.Count(a => a.Tipo == "Estudiante");
        }


        public double R_CantidadFuncionario()
        {
            
            return ModeloBD.Instanciar.Usuario.Where(a => a.Tipo == "Funcionario").Count();
        }



        public string R_UsuarioMasActivo()
        {
            //return ModeloBD.Instanciar.Registro.First(a => a.Id_Usuario == ModeloBD.Instanciar.Registro.GroupBy(t => t.Id_Usuario).Select(h => h.Count()).Max()).Id_Usuario.ToString();

            //return ModeloBD.Instanciar.Registro.GroupBy(a => a.Id_Usuario).Select(a => a.Count()).Max().ToString();
            
            return string.Format("{0} {1}", ModeloBD.Instanciar.Usuario.First(a => a.Id == 95).Nombres, ModeloBD.Instanciar.Usuario.First(a => a.Id == 95).Apellidos);
        }
        //(ModeloBD.Instanciar.Usuario.First(a => a.User == LOGusuario).Nombres))

        public string R_CantidadRegistrosMaxUser() 
        {
            return ModeloBD.Instanciar.Registro.GroupBy(a => a.Id_Usuario).Select(a => a.Count()).Max().ToString(); //=22

            //return ModeloBD.Instanciar.Registro.GroupBy(a => a.Id_Usuario).Select(a => a.Count()).Max().ToString(); //=22
            //return string.Format("{0} {1}", ModeloBD.Instanciar.Usuario.First(a => a.Id == 95).Nombres, ModeloBD.Instanciar.Usuario.First(a => a.Id == 95).Apellidos);
        }

        public double R_PromedioDeRegistros()
        {
            return ModeloBD.Instanciar.Registro.Select(a => a.Id).Count() / ModeloBD.Instanciar.Usuario.Select(a => a.Id).Count();
        }

    }
}
