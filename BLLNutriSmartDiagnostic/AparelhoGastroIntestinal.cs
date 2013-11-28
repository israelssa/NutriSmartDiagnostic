using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAONutriSmartDiagnostic;
using System.Data.Objects;

namespace BLLNutriSmartDiagnostic
{
    public class AparelhoGastroIntestinal
    {
        DBNutriSmartDiagnosticsEntities entity = new DBNutriSmartDiagnosticsEntities();

        public int InsertAparelhoGastroIntestinal(DAONutriSmartDiagnostic.AparelhoGastroIntestinal AparelhoGastroIntestinalEntity)
        {
            var idParameter = new ObjectParameter("idAparelhoGastroIntestinal", typeof(int));
            entity.AddToAparelhoGastroIntestinal(AparelhoGastroIntestinalEntity);
            entity.SaveChanges();
            return AparelhoGastroIntestinalEntity.idGastroIntestinal;
        }

        public DAONutriSmartDiagnostic.AparelhoGastroIntestinal GetAparelhoGastroIntestinalByID(int IDAparelhoGastroIntestinal)
        {
            return (from P in entity.AparelhoGastroIntestinal
                    where
                    P.idGastroIntestinal == IDAparelhoGastroIntestinal
                    select
                    P).First<DAONutriSmartDiagnostic.AparelhoGastroIntestinal>();
        }

        public void UpdateAparelhoGastroIntestinal(DAONutriSmartDiagnostic.AparelhoGastroIntestinal AparelhoGastroIntestinalEntity)
        {
            entity.AddToAparelhoGastroIntestinal(AparelhoGastroIntestinalEntity);
            entity.SaveChanges();
        }

        public void DeleteAparelhoGastroIntestinal(DAONutriSmartDiagnostic.AparelhoGastroIntestinal AparelhoGastroIntestinalEntity)
        {
            entity.AparelhoGastroIntestinal.DeleteObject(AparelhoGastroIntestinalEntity);
            entity.SaveChanges();
        }
    }
}
