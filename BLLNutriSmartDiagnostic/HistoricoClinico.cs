using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;

namespace BLLNutriSmartDiagnostic
{
    public class HistoricoClinico
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertHistoricoClinico(DAONutriSmartDiagnostic.HistoricoClinico HistoricoClinicoEntity)
        {
            entity.AddToHistoricoClinico(HistoricoClinicoEntity);
            entity.SaveChanges();
            return HistoricoClinicoEntity.idHistoricoClinico;
        }

        public DAONutriSmartDiagnostic.HistoricoClinico GetHistoricoClinicoByID(int IDHistoricoClinico)
        {
            return (from P in entity.HistoricoClinico
                    where
                    P.idHistoricoClinico == IDHistoricoClinico
                    select
                    P).First<DAONutriSmartDiagnostic.HistoricoClinico>();
        }

        public void UpdateHistoricoClinico(DAONutriSmartDiagnostic.HistoricoClinico HistoricoClinicoEntity)
        {
            entity.AddToHistoricoClinico(HistoricoClinicoEntity);
            entity.SaveChanges();
        }

        public void DeleteHistoricoClinico(DAONutriSmartDiagnostic.HistoricoClinico HistoricoClinicoEntity)
        {
            entity.HistoricoClinico.DeleteObject(HistoricoClinicoEntity);
            entity.SaveChanges();
        }
    }
}
