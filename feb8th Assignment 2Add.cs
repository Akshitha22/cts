using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class feb8thAdd
    {
        static void Main()
        {
            int rows, cols;
            int[,] a = {
                          {1, 4, 6},
                          {4, 18, 8},
                          {3, 8, 11}
                     };  
            int[,] b = {
                          {4, 9, 8},
                          {3, 7, 13},
                          {1, 11, 17}
                    };
            rows = a.GetLength(0);
            cols = a.GetLength(1); 
            int[,] sum = new int[rows, cols];
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    sum[i, j] = a[i, j] + b[i, j];
                }
            }
            Console.WriteLine("Sum of 3 by 3 matrices: ");
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    Console.Write(sum[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}