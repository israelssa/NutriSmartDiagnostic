using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;
using System.Data.Objects;

namespace BLLNutriSmartDiagnostic
{
    public class Pacientes
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public IQueryable GetPacientesByName(String nome)
        {
            return (from p in entity.Paciente where p.Nome.Contains(nome) select p);
        }

        public IQueryable GetAllPacientes()
        {
            return (from p in entity.Paciente select p);
        }

        public DAONutriSmartDiagnostic.Paciente GetPacienteByIdUser(int IdPaciente)
        {
            return (from p in entity.Paciente where p.idPaciente == IdPaciente select p).First<DAONutriSmartDiagnostic.Paciente>();
        }

        public int InsertPaciente(Paciente pacienteEntity)
        {
            entity.AddToPaciente(pacienteEntity);
            entity.SaveChanges();
            return pacienteEntity.idPaciente;
        }

        public Paciente GetPacienteByID(int IDPaciente)
        {
            return (from P in entity.Paciente
                    where
                    P.idPaciente == IDPaciente
                    select
                    P).First<Paciente>();
        }

        public void UpdatePaciente(Paciente PacienteEntity)
        {
            entity.AddToPaciente(PacienteEntity);
            entity.SaveChanges();
        }

        public void DeletePaciente(Paciente PacienteEntity)
        {
            entity.Paciente.DeleteObject(PacienteEntity);
            entity.SaveChanges();
        }

    }
}
