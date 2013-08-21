using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Brackets2012
{
    public class Team
    {
        public int TeamId { get; set; }
        public string TeamName { get; set; }

        public Team(int id, string name)
        {
            this.TeamId = id;
            this.TeamName = name;
        }
    }
}
