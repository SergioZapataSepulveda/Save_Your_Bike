using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SBK.Datos; 

namespace SBK.Negocio
{
    public class Colecciones
    {
        private List<Registro> ListarRegistro(List<SBK.Datos.Registro> aux)
        {
            List<Registro> salida = new List<Registro>();
            foreach (SBK.Datos.Registro item in aux)
            {
                salida.Add(new Registro()
                  {
                      Id = item.Id,
                      Id_Usuario = item.Id_Usuario,
                      Fecha = String.Format("{0: dd' de 'MMMM' del 'yyyy '_' }", item.Fecha),
                      HoraEntrada = item.HoraEntrada,
                      HoraSalida = item.HoraSalida
                  });
            }
            return salida; 
        }



        public List<Registro> ListarRegistro()
        {
            return ListarRegistro(ModeloBD.Instanciar.Registro.OrderBy(f => f.Fecha).ToList());
        }


        public List<Registro> ListarRegistro(int _id)
        {
            return ListarRegistro(ModeloBD.Instanciar.Registro.Where(v => v.Id_Usuario == _id).OrderBy(f => f.Fecha).ToList());
        }




        private List<Usuario> ListarUsuario(List<SBK.Datos.Usuario> aux)
        {
            List<Usuario> salida = new List<Usuario>();
            foreach (SBK.Datos.Usuario item in aux)
            {
                salida.Add(new Usuario()
                {
                    Id          = item.Id,
                    User        = item.User,
                    Pass        = item.Pass,
                    Nombres     = item.Nombres,
                    Apellidos   = item.Apellidos,
                    Correo      = item.Correo,
                    Tipo        = item.Tipo,
                    Edad        = item.Edad
                });
            }
            return salida;
        }


        public List<Usuario> ListarUsuario()
        {
            return ListarUsuario(ModeloBD.Instanciar.Usuario.ToList());
        }



        

    }
}
