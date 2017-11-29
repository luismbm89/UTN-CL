using SoftCL.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SoftCL.DAL
{
    public static class PersonaDAL
    {

        public static DataTable Persona(int NoSeq) {
            DataTable dt = new DataTable();
            try {
                dt = PersonaBLL.Persona(NoSeq);
            }
            catch (Exception ex) {
            }
            return dt

        }
    }
}