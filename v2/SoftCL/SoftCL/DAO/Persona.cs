using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftCL.DAO
{
    public class Persona
    {
       private int NoSeq = 0, Edad = 0, Pais = 0,Perfil=0;
       private string ID="",Nombre, Apellido1, Apellido2, NombreCompleto = "",Correo="",Telefono="";

        public int NoSeq1 { get => NoSeq; set => NoSeq = value; }
        public int Edad1 { get => Edad; set => Edad = value; }
        public int Pais1 { get => Pais; set => Pais = value; }
        public int Perfil1 { get => Perfil; set => Perfil = value; }
        public string ID1 { get => ID; set => ID = value; }
        public string Nombre1 { get => Nombre; set => Nombre = value; }
        public string Apellido11 { get => Apellido1; set => Apellido1 = value; }
        public string Apellido21 { get => Apellido2; set => Apellido2 = value; }
        public string NombreCompleto1 { get => NombreCompleto; set => NombreCompleto = value; }
        public string Correo1 { get => Correo; set => Correo = value; }
        public string Telefono1 { get => Telefono; set => Telefono = value; }

        public Persona(int NoSeq, int Edad, int Pais, int Perfil, string ID, string Nombre, string Apellido1, string Apellido2, string NombreCompleto, string Correo, string Tel)
        {
            NoSeq1 = NoSeq;
            Edad1 = Edad;
            Pais1 = Pais;
            Perfil1 = Pais;
            ID1 = ID;
            Nombre1 = Nombre;
            Apellido11 = Apellido1;
            Apellido21 = Apellido2;
            NombreCompleto1 = NombreCompleto;
            Correo1 = Correo;
            Telefono1 = Telefono;
        }

        public Persona()
        {
            NoSeq1 = 0;
            Edad1 = 0;
            Pais1 = 0;
            Perfil1 = 0;
            ID1 = "";
            Nombre1 = "";
            Apellido11 = "";
            Apellido21 = "";
            NombreCompleto1 = "";
            Correo1 = "";
            Telefono1 = "";
        }
        public Persona(int NoSeq)
        {
            NoSeq1 = NoSeq;
            Edad1 = 0;
            Pais1 = 0;
            Perfil1 = 0;
            ID1 = "";
            Nombre1 = "";
            Apellido11 = "";
            Apellido21 = "";
            NombreCompleto1 = "";
            Correo1 = "";
            Telefono1 = "";
        }
    }
}