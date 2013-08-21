using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Brackets2012;
using C5;
using SDC = System.Data.Common;
using System.Collections.ObjectModel;
using System.ComponentModel;

/**
 * Bracket.cs
 * Author: Eric Carestia
 * Copyright: EC Computers, LLC
 * Creation 4/26/2012
 * 
 *  Bracket is the class that contains all relevant players, 
 *  game type, scores, and all relevant information required 
 *  to crate a tournament/striaght-line bracket.
 * 
 * 
 * 
 **/
namespace Brackets2012
{
    class Bracket : INotifyPropertyChanged
    {
        ObservableCollection<Player> bPlayers = new ObservableCollection<Player>();  //holds the players for this bracket
        ObservableCollection<Player> refundList = new ObservableCollection<Player>(); //holds players that are owed money.

        ArrayList<Player> firstRoundWinners = new ArrayList<Player>();  //holds those who one the first round
        ArrayList<Player> secondRoundWinners = new ArrayList<Player>(); //holds those who won the second round
          
        Player BracketWinner;   //the winner of the bracket
        Player SecondPlace;     //the runner up of the bracket, lost to the champion.
         
        private int bracketPrice; 
        public int _bracketPrice
        {
            get
            {
                return this.bracketPrice;
            }
            set
            {
                this.bracketPrice = value;
            }
        }

        public String BracketType;  //this will hold the bracket's type that will determine
        //the scoring system that will be used.

        public int NumberOfBowlers;   //The number of bowlers who will initially be in the bracket for round 1
        public int NumberOfGames;    //how many games are in this bracket.
        public int[] gamesToRecord;
        
        public event PropertyChangedEventHandler PropertyChanged;
        // public event String UpdateBracket;

        //base constructor.
        public Bracket(int numberOfPlayers, double bracketValue, int[] gamesThatMatter, String typeOfBracket)
        {
            if (numberOfPlayers > 2 && bracketValue > 0 && gamesThatMatter.Length > 0)
            {
                this.NumberOfBowlers = numberOfPlayers;
                this.BracketType = typeOfBracket;
                this.NumberOfGames = gamesThatMatter.Length;
                gamesToRecord = gamesThatMatter;
            }
            else
            {
                throw new Exception();
            }
        }

        /// <summary>
        /// Runs through each entry in players to add them to the observable bracket
        /// </summary>
        /// <param name="players"></param>
        public void AddPlayersToBracket(ArrayList<Entry> players)
        {
            foreach (Entry e in players)
            {
                this.bPlayers.Add(e.player1);
                this.bPlayers.Add(e.player2);
            }
        }
              
        /// <summary>
        /// 
        /// </summary>
        /// <param name="name"></param>
        public void OnPropertyChanged(string name)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(name));
            }
        }
    }
}
