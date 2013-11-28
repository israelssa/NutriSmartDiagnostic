using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;

namespace BLLNutriSmartDiagnostic
{
    public class Nutricionista
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public DAONutriSmartDiagnostic.Nutricionista getNutricionistaByIdUser(int idUsuario)
        {
            return (from p in entity.Nutricionista where p.idUsuario == idUsuario select p).First<DAONutriSmartDiagnostic.Nutricionista>();
        }

        public int InsertNutricionista(DAONutriSmartDiagnostic.Nutricionista NutricionistaEntity)
        {
            entity.AddToNutricionista(NutricionistaEntity);
            entity.SaveChanges();
            return NutricionistaEntity.idNutricionista;
        }

        public DAONutriSmartDiagnostic.Nutricionista GetNutricionistaByID(int IDNutricionista)
        {
            return (from P in entity.Nutricionista
                    where
                    P.idNutricionista == IDNutricionista
                    select
                    P).First<DAONutriSmartDiagnostic.Nutricionista>();
        }

        public void UpdateNutricionista(DAONutriSmartDiagnostic.Nutricionista NutricionistaEntity)
        {
            entity.AddToNutricionista(NutricionistaEntity);
            entity.SaveChanges();
        }

        public void DeleteNutricionista(DAONutriSmartDiagnostic.Nutricionista NutricionistaEntity)
        {
            entity.Nutricionista.DeleteObject(NutricionistaEntity);
            entity.SaveChanges();
        }
    }
}
