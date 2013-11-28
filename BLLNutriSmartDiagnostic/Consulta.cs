using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;
using System.Data.Objects;

namespace BLLNutriSmartDiagnostic
{
    public class Consulta
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertConsulta(DAONutriSmartDiagnostic.Consulta ConsultaEntity)
        {
            entity.AddToConsulta(ConsultaEntity);
            entity.SaveChanges();
            return ConsultaEntity.idConsulta;
        }

        public DAONutriSmartDiagnostic.Consulta GetConsultaByID(int IDConsulta)
        {
            return (from P in entity.Consulta
                    where
                    P.idConsulta == IDConsulta
                    select
                    P).First<DAONutriSmartDiagnostic.Consulta>();
        }

        public void UpdateConsulta(DAONutriSmartDiagnostic.Consulta ConsultaEntity)
        {
            entity.AddToConsulta(ConsultaEntity);
            entity.SaveChanges();
        }

        public void DeleteConsulta(DAONutriSmartDiagnostic.Consulta ConsultaEntity)
        {
            entity.Consulta.DeleteObject(ConsultaEntity);
            entity.SaveChanges();
        }
    }
}
