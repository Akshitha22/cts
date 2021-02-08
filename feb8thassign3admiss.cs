using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace feb8thassignment
{
    class feb8thassign3admiss
    {
        static void Main()
        {
            int phy, chem, math;
            Console.Write("Input the marks obtained in Physics :");
            phy = Convert.ToInt32(Console.ReadLine());
            Console.Write("Input the marks obtained in Chemistry :");
            chem = Convert.ToInt32(Console.ReadLine());
            Console.Write("Input the marks obtained in Mathematics :");
            math = Convert.ToInt32(Console.ReadLine());
            Console.Write("Total marks of Maths, Physics and Chemistry : {0}\n", math+ phy + chem);
            Console.Write("Total marks of Maths and  Physics : {0}\n", math + phy);

            if (math >= 65)

                if (phy >= 55)

                    if (chem >= 50)

                        if ((math + phy + chem) >= 180 || (math + phy) >= 140)
                            Console.Write("The  candidate is eligible for admission.\n");
                        else
                            Console.Write("The candidate is not eligible.\n\n");
                    else
                        Console.Write("The candidate is not eligible.\n\n");
                else
                    Console.Write("The candidate is not eligible.\n\n");
            else
                Console.Write("The candidate is not eligible.\n\n");
        }
    }
}
