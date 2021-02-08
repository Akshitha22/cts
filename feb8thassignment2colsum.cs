using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class feb8thcolsum
    {
        static void Main()
        {
            int i, j, n;
            int[,] arr1 = new int[10, 10];
            int[] colsum = new int[10];
            Console.Write("Input the size of the square matrix : ");
            n = Convert.ToInt32(Console.ReadLine());
            Console.Write("Input elements in the matrix :\n");
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
                colsum[i] = 0;
                for (j = 0; j < n; j++)
                    colsum[i] = colsum[i] + arr1[j, i];
            }

            Console.Write("The sum  of columns of the matrix is :\n");

            Console.Write("\n");
            for (j = 0; j < n; j++)
            {
                Console.Write("{0}   ", colsum[j]);
            }
            Console.Write("\n\n");
        }
    }
}