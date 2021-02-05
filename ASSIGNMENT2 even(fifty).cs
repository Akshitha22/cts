using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment1
{
    class even_fifty_
    {
        static void Main(string[] args)
        {
            int i = 1;

            Console.WriteLine("Even Numbers upto 50 are :");
            for (i = 1; i <= 50; i++)
            {
                if (i % 2 == 0)
                {
                    Console.Write(i + " \n");
                }
            }
        }
    }
}
