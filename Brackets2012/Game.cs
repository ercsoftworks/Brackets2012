using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.Design;
using System.Collections.ObjectModel;

namespace Brackets2012
{
    class Game
    {
        //this holds the winner for the games
        ObservableCollection<Player> gamePlayers = new ObservableCollection<Player>();
        // readonly int gameID = this.GetHashCode();
    }
}
