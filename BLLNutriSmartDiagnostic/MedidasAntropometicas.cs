using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;

namespace BLLNutriSmartDiagnostic
{
    public class MedidasAntropometricas
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertMedidasAntropometricas(DAONutriSmartDiagnostic.MedidasAntropometricas MedidasAntropometricasEntity)
        {
            entity.AddToMedidasAntropometricas(MedidasAntropometricasEntity);
            entity.SaveChanges();
            return MedidasAntropometricasEntity.idMedidasAntropometricas;
        }

        public DAONutriSmartDiagnostic.MedidasAntropometricas GetMedidasAntropometricasByID(int IDMedidasAntropometricas)
        {
            return (from P in entity.MedidasAntropometricas
                    where
                    P.idMedidasAntropometricas == IDMedidasAntropometricas
                    select
                    P).First<DAONutriSmartDiagnostic.MedidasAntropometricas>();
        }

        public void UpdateMedidasAntropometricas(DAONutriSmartDiagnostic.MedidasAntropometricas MedidasAntropometricasEntity)
        {
            entity.AddToMedidasAntropometricas(MedidasAntropometricasEntity);
            entity.SaveChanges();
        }

        public void DeleteMedidasAntropometricas(DAONutriSmartDiagnostic.MedidasAntropometricas MedidasAntropometricasEntity)
        {
            entity.MedidasAntropometricas.DeleteObject(MedidasAntropometricasEntity);
            entity.SaveChanges();
        }

    }
}
