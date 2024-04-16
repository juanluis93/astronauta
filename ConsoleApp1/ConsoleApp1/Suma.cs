using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
     class Suma:varsa
    {
        public override double Sumar()
        {
            Console.Write("Ingrese  los numero que se van a sumar");
            a = double.Parse(Console.ReadLine());
            Console.Write("Ingrese  el segundo numero que se van a sumar");
            b = double.Parse(Console.ReadLine());
            double r = a + b;
            return r;

        }
    }
}