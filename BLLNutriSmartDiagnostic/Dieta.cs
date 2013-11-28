using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;
using System.Data.Objects;

namespace BLLNutriSmartDiagnostic
{
    public class Dieta
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertDieta(DAONutriSmartDiagnostic.Dieta DietaEntity)
        {
            entity.AddToDieta(DietaEntity);
            entity.SaveChanges();
            return DietaEntity.idDieta;
        }

        public DAONutriSmartDiagnostic.Dieta GetDietaByID(int IDDieta)
        {
            return (from P in entity.Dieta
                    where
                    P.idDieta == IDDieta
                    select
                    P).First<DAONutriSmartDiagnostic.Dieta>();
        }

        public void UpdateDieta(DAONutriSmartDiagnostic.Dieta DietaEntity)
        {
            entity.AddToDieta(DietaEntity);
            entity.SaveChanges();
        }

        public void DeleteDieta(DAONutriSmartDiagnostic.Dieta DietaEntity)
        {
            entity.Dieta.DeleteObject(DietaEntity);
            entity.SaveChanges();
        }
    }
}
