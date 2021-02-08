using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class feb8throwsum
    {
        static void Main()
        {
            int i, j, n;
            int[,] arr1 = new int[10, 10];
            int[] rowsum = new int[10];
            Console.WriteLine("Input the size of the square matrix : ");
            n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Input elements in the matrix :\n");
            for (i = 0; i < n; i++)
            {
                for (j = 0; j < n; j++)
                {
                    Console.Write("element - [{0}],[{1}] : ", i, j);
                    arr1[i, j] = Convert.ToInt32(Console.ReadLine());
                }
            }
            Console.Write("The matrix is :\n");
            for (i = 0; i < n; i++)
            {
                for (j = 0; j < n; j++)
                    Console.Write("{0}  ", arr1[i, j]);
                Console.Write("\n");
            }
            for (i = 0; i < n; i++)
            {
                rowsum[i] = 0;
                for (j = 0; j < n; j++)
                    rowsum[i] = rowsum[i] + arr1[i, j];
            }
            Console.Write("The sum of rows of the matrix is :\n");
            for (i = 0; i < n; i++)
            {
                for (j = 0; j < n; j++)
                    Console.Write("{0}    ", arr1[i, j]);
                Console.Write("{0}    ", rowsum[i]);
                Console.Write("\n");
            }

        }
    }
}