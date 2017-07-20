using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SBK.Datos;

namespace SBK.Negocio
{
    public class Registro
    {
        public int Id { get; set; }
        public int Id_Usuario { get; set; }
        public string Fecha { get; set; }
        public string HoraEntrada { get; set; }
        public string HoraSalida { get; set; }

        public Registro()
        {
            this.Init(); 
        }

        private void Init()
        {
            Id         = 0;
            Id_Usuario = 0;
            Fecha = "";
            HoraEntrada = "";
            HoraSalida  = "";
        }


        

    }
}
