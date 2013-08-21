using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Data.Sql;

namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for PlayerScreen.xaml
    /// </summary>
    public partial class PlayerScreen : UserControl
    {
        private Regex regexObj = new Regex(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$");

        String[] states = {"Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut",
                              "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana",
                              "Iowa", "Kansas","Kentucky","Louisiana", "Maine", "Maryland","Massachusetts", 
                              "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", 
                              "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina",
                              "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennslyvania", "Rhode Island", "South Carolina",
                              "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia",
                              "Wisconsin", "Wyoming"};

        String[] suffixes = { "Sr.", "Jr.", "Esq.", "Ph.D.", "M.D." };
        String dob;
        String playerState;
        //DataHandler handler;

        public PlayerScreen()
        {
            InitializeComponent();
            comboBox3.ItemsSource = states;
            comboBox1.ItemsSource = suffixes;
        }

        private void textBox6_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
        /**
         * 
         * Form input validation method section.        * 
         * 
         * 
         **/
        private string ValidatePhoneNumber(string phoneNumber)
        {
            //if the phone number entered into the field matches the 
            if (regexObj.IsMatch(phoneNumber))
            {
                string formattedPhoneNumber = regexObj.Replace(phoneNumber, "($1) $2-$3");
                return formattedPhoneNumber;
            }
            else
            {
                return ("Invalid");
            }
        }

        private void datePicker1_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            dob = datePicker1.Text;

            MessageBox.Show(dob);
        }
        /// <summary>
        /// Add Player Handler
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            ///Connect to database
            try
            {
                // handler = new DataHandler("Data Source=ERICCARESTIA-PC;Initial Catalog=PlayerDataBase;Integrated Security=True;Pooling=False");

                Player testPlayer = new Player(textBox1.Text, textBox2.Text, "2");
                testPlayer._gender = "M";
                testPlayer._handicap = 0;
                testPlayer._bowlerAvg = 100;
                testPlayer._middleInitial = textBox3.Text;
                testPlayer._pinsPerFrameAvg = 0;
                testPlayer._pointsWon = 0;
                testPlayer._totalPointsPossible = 0;
                testPlayer._totalPins = 0;
                testPlayer._dateOfBirth = datePicker1.Text;
                testPlayer._streetAddress = textBox4.Text;
                testPlayer._city = textBox5.Text;
                testPlayer._emailAddress = textBox7.Text;
                testPlayer._state = playerState;

                MessageBox.Show(this.playerState + " " + testPlayer._BowlerID);

                // handler.CreateNewBowler(testPlayer,testPlayer._BowlerID.ToString());

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        //When the user selects the state for the player
        private void comboBox3_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            this.playerState = comboBox3.SelectedItem.ToString();
            MessageBox.Show(playerState);
        }

        /**
            Player testPlayer = new Player("Eric","Carestia","2");
            testPlayer._gender = "M";
            testPlayer._BowlerID = testPlayer.GetHashCode();
            testPlayer._handicap = 0;
            testPlayer._bowlerAvg = 100;
            testPlayer._middleInitial = "R";
            testPlayer._pinsPerFrameAvg = 10;
            testPlayer._pointsWon = 200;
            testPlayer._totalPointsPossible = 300;
            testPlayer._totalPins = 100;

            handler.ConnectToDatabase("Data Source=ERICCARESTIA-PC;Initial Catalog=PlayerDataBase;Integrated Security=True;Pooling=False");
            handler.CreateNewBowler(testPlayer);

        **/


    }


}