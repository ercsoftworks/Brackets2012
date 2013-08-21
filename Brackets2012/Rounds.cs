using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Brackets2012;
using C5;

namespace Brackets2012
{
    /// <summary>
    /// Summary description for Matches
    /// </summary>
    public class Rounds
    {
        public int RoundNumber { get; set; }
        public ArrayList<Match> Matches { get; set; }

        public Rounds(int number, ArrayList<Match> matches)
        {
            this.RoundNumber = number;
            this.Matches = matches;
        }
    }
}