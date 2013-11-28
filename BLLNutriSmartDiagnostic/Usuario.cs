using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;

namespace BLLNutriSmartDiagnostic
{
    public class Usuario
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public DAONutriSmartDiagnostic.Usuario Autentication(String login, String senha)
        {
            return (from p in entity.Usuario where p.Login == login && p.Senha == senha select p).First<DAONutriSmartDiagnostic.Usuario>();
        }
    }

}
