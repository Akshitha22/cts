using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment1
{
	class average_twenty_
	{
		static void Main(string[] args)
		{
			int i,sum = 0;
			float avg;
			for (i = 1; i <= 20; i++)
			{
				Console.Write("{0} \n", i);
				sum += i;
			}
			avg = (float)sum / 20;
			Console.WriteLine("The sum of 20 natural numbers are : {0}\nThe Average is : {1}\n", sum, avg);
		}
	}
}
