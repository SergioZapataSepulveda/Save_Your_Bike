using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SBK.Datos;

namespace SBK.Negocio
{
    class ModeloBD
    {
        private static SaveYourBikeEntities _instanciar;

        public static SaveYourBikeEntities Instanciar
        {
            get
            {
                if (_instanciar == null)
                {
                    _instanciar = new SaveYourBikeEntities();
                }
                return _instanciar; 
            }
            set{ _instanciar = value; }
        }
    }
}
