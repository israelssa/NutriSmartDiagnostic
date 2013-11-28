using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;

namespace BLLNutriSmartDiagnostic
{
    public class EntrevistaPaciente
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertEntrevistaPaciente(DAONutriSmartDiagnostic.EntrevistaPaciente EntrevistaPacienteEntity)
        {
            entity.AddToEntrevistaPaciente(EntrevistaPacienteEntity);
            entity.SaveChanges();
            return EntrevistaPacienteEntity.idEntrevistaPaciente;
        }

        public DAONutriSmartDiagnostic.EntrevistaPaciente GetEntrevistaPacienteByID(int IDEntrevistaPaciente)
        {
            return (from P in entity.EntrevistaPaciente
                    where
                    P.idEntrevistaPaciente == IDEntrevistaPaciente
                    select
                    P).First<DAONutriSmartDiagnostic.EntrevistaPaciente>();
        }

        public void UpdateEntrevistaPaciente(DAONutriSmartDiagnostic.EntrevistaPaciente EntrevistaPacienteEntity)
        {
            entity.AddToEntrevistaPaciente(EntrevistaPacienteEntity);
            entity.SaveChanges();
        }

        public void DeleteEntrevistaPaciente(DAONutriSmartDiagnostic.EntrevistaPaciente EntrevistaPacienteEntity)
        {
            entity.EntrevistaPaciente.DeleteObject(EntrevistaPacienteEntity);
            entity.SaveChanges();
        }
    }
}
