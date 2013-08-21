using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Brackets2012
{
    /// <summary>
    /// Eliminator Class
    /// 
    /// This class creates an "eliminator" style game series where after each successive round,
    /// the players' scores that fall below the minimum "cut score" will be removed from the next
    /// round.  
    /// 
    /// TO DO:  1. Find a balanced way to eliminate players (currently the top 60% will advance.)
    ///         
    ///         2. Allow for the tournament manager / league secretary to adjust how many are 
    ///         cut/advancing after each round of play as desired.
    ///         
    ///         3. Implement with Player class instead of hard coded string/player pairs.
    ///         
    ///         4. Interface with the database after to record wins/losses/points, etc.
    ///         
    ///         5. If possible, use Poisson / Kurtosis distribution methods to remove
    ///         any skewing to player scores that might arise.
    ///         
    /// </summary>
    class Eliminator
    {
        public Eliminator()
        {
            int mean, mode, range, standard_dev, delta;
            double[] scores = new double[17];
            double[] alive_list = new double[(int)Math.Ceiling(scores.Length * 0.6)];
            System.Random rand = new System.Random();

            Console.WriteLine("seeding player scores list with values between 100-300");
            for (int i = 0; i < scores.Length; i++)
            {
                scores[i] = rand.Next(100, 300);
                Console.WriteLine(scores[i]);
            }

            Console.WriteLine("Seeding complete...");
            Console.WriteLine("Press any key to continue");
            Console.ReadKey();
            //use the Statistics class
            Statistics stats = new Statistics(scores);

            Console.WriteLine("60% of list size: " + Math.Ceiling(scores.Length * 0.6));
            Console.WriteLine("Now sorting and calculating statistics...");

            //sort call
            stats.sort(scores);

            Console.WriteLine("Scores:");
            for (int l = 0; l < alive_list.Length; l++)
            {
                alive_list[l] = scores[(scores.Length - 1) - l];
            }

            mean = (int)stats.mean();
            mode = (int)stats.mode();
            range = (int)stats.range();
            standard_dev = (int)stats.standard_dev();
            Console.WriteLine("Mean: " + mean);
            Console.WriteLine("Mode: " + mode);
            Console.WriteLine("Range: " + range);
            Console.WriteLine("Standard Deviation: " + standard_dev);
            Console.WriteLine("---------------------------------------------------");

            Console.ReadKey();

            Statistics stats2 = new Statistics(alive_list);

            //delta  = full scores list's mean - adjusted score's mean.
            delta = mean - (int)stats2.mean();

            Console.WriteLine("Delta: " + delta);
            Console.WriteLine("Scores that made the cut:");
            for (int k = 0; k < alive_list.Length; k++)
            {
                // if (alive_list[k] >= mean)
                // {
                Console.WriteLine(alive_list[k]);
                // }
            }

            Console.WriteLine("CUT SCORE: " + alive_list[alive_list.Length - 1]);

            Console.ReadKey();
        }
    }
}
