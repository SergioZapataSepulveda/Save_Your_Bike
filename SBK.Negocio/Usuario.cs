using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SBK.Datos; 


namespace SBK.Negocio
{
    public class Usuario
    {



        public bool ValidarLogin(string LOGusuario, string LOGpassword)
        {
            try
            {
                var aux = (from reg in ModeloBD.Instanciar.Usuario
                           where reg.User == LOGusuario &&
                                 reg.Pass == LOGpassword
                           select reg).First();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }




        public int ID_desde_LogUser(string LOGusuario)
        {
            return ModeloBD.Instanciar.Usuario.First(a => a.User == LOGusuario).Id;
        }

        public string Nombre_desde_LogUser(string LOGusuario)
        {
            return string.Format("Bienvenido(a) {0}   :::   ", (ModeloBD.Instanciar.Usuario.First(a => a.User == LOGusuario).Nombres));
        }




        public int Id { get; set; }
        public string User { get; set; }
        public string Pass { get; set; }
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Correo { get; set; }
        public string Tipo { get; set; }
        public int Edad { get; set; }


        public Usuario()
        {
            this.Init(); 
        }



        private void Init()
        {
             Id          = 0 ;
             User        = " " ;
             Pass        = " " ;
             Rut         = " ";
             Nombres     = " " ;
             Apellidos   = " " ;
             Correo      = " ";
             Tipo        = " " ;
             Edad        = 0 ;
        }



        private SBK.Datos.Usuario buscarUsuario()
        {
            return ModeloBD.Instanciar.Usuario.First(a => a.Id == this.Id);
        }


        public bool Create()
        {
            try
            {
                SBK.Datos.Usuario aux = new SBK.Datos.Usuario();

                aux.Id        = this.Id;
                aux.User      = this.User;
                aux.Pass      = this.Pass;
                aux.Rut       = this.Rut;
                aux.Nombres   = this.Nombres;
                aux.Apellidos = this.Apellidos;
                aux.Correo    = this.Correo;
                aux.Tipo      = this.Tipo;
                aux.Edad      = this.Edad;

                ModeloBD.Instanciar.AddToUsuario(aux);
                ModeloBD.Instanciar.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


        public bool Read()
        {
            try
            {
                SBK.Datos.Usuario aux = buscarUsuario();

                this.Id        = aux.Id        ;
                this.User      = aux.User      ;
                this.Pass      = aux.Pass      ;
                this.Rut       = aux.Rut       ;
                this.Nombres   = aux.Nombres   ;
                this.Apellidos = aux.Apellidos ;
                this.Correo    = aux.Correo    ;
                this.Tipo      = aux.Tipo      ;
                this.Edad      = aux.Edad      ;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }



        public bool Update()
        {
            try
            {
                SBK.Datos.Usuario aux = buscarUsuario();
               
                aux.Id        = this.Id;
                aux.User      = this.User;
                aux.Pass      = this.Pass;
                aux.Rut       = this.Rut; 
                aux.Nombres   = this.Nombres;
                aux.Apellidos = this.Apellidos;
                aux.Correo    = this.Correo;
                aux.Tipo      = this.Tipo;
                aux.Edad      = this.Edad;

                ModeloBD.Instanciar.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


        public bool Delete()
        {
            try
            {
                SBK.Datos.Usuario aux = buscarUsuario();

                ModeloBD.Instanciar.DeleteObject(aux);

                ModeloBD.Instanciar.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}
