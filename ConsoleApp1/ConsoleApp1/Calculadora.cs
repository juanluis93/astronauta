using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Calculadora : varsa


    {
        static void Main(string[] args)
        {
             var cal= new Suma();
            Console.Write("\n [1] suma \n [2]resta \n [3]multiplicacion \n [4]Division \n" +
                  "Que tipo de operaciones vas a  utilizar?");
            int opcion = int.Parse(Console.ReadLine());
            switch (opcion)
            {
                case 1:
                    cal = new Suma();
                    break;
                case 2:
                   
                    break;
                case 3:
               
                    break;
                default:
                    Console.WriteLine("Opcion Incorrecta!");
                    break;
            }

        }

        public override double Sumar()
        {
            throw new NotImplementedException();
        }
    }
