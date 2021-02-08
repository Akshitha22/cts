using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class feb8thmax
    {
        static void Main()
        {
            int[] arr1 = new int[100];
            int i, max, n;
            Console.WriteLine("Input the number of elements to be stored in the array");
            n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Input {0} elements in the array ", n);
            for (i = 0; i < n; i++)
            {
                Console.WriteLine(" ", i);
                arr1[i] = Convert.ToInt32(Console.ReadLine());
            }
            max = arr1[0];
            for (i = 1; i < n; i++)
            {
                if (arr1[i] > max)
                {
                    max = arr1[i];
                }
            }
            Console.Write("Maximum element is : {0}\n", max);

        }
    }
}
