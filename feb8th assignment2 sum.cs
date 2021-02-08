using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] num = new int[10];
            int sum = 0;
            float avg;
            Console.WriteLine("Enter Numbers");
            for (int i = 0; i < 10; i++)
            {
                num[i] = Convert.ToInt16(Console.ReadLine());
                sum += num[i];
            }

            avg = (float)sum / 10;
            Console.WriteLine("Sum is " + sum);
            Console.WriteLine("Average is " + avg);
        }
    }
}

