using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using C5;
using System.ComponentModel;
using System.Collections.ObjectModel;

namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for BracketScreen.xaml
    /// </summary>
    public partial class BracketScreen : UserControl
    {
        private ObservableCollection<Entry> selectedBracket = new ObservableCollection<Entry>();
        private ObservableCollection<ArrayList<ArrayList<Entry>>> BracketList = new ObservableCollection<ArrayList<ArrayList<Entry>>>();
        public ObservableCollection<RefundedPlayer> refundList = new ObservableCollection<RefundedPlayer>();

        public BracketGenerator bGen = new BracketGenerator();

        public String[] selectedNumberOfPlayers = { "8", "16", "24", "32", "48", "64" };
        public int selectedNumberOfPlayersChoice;

        public String[] selectedNumberOfGames = { "2", "3", "4", "5", "6" };
        public int selectedNumberOfGamesChoice;

        public String[] selectedBracketValue = { "$.50", "$1", "$2", "$5", "$10", "$20", "$50", "$100", "$250" };
        public double selectedBracketValueChoice;

        public int WhichBracket;
        public int TotalBrackets;
        public BracketScreen()
        {
            InitializeComponent();
            //set up the list
            this.comboBox1.ItemsSource = this.selectedNumberOfPlayers;
            this.comboBox2.ItemsSource = this.selectedNumberOfGames;
            this.comboBox3.ItemsSource = this.selectedBracketValue;
            EntryTotals.Content = "0";

            if (BracketList == null)
            {
                button1.IsEnabled = false;
            }

        }

        private void GenerateBrackets()
        {
            this.clearBrackets();
            /// bGen.StandardBracketGeneration();
            Console.WriteLine("Bracket Genration Passes....");
            EntryTotals.Content = BracketList.Count * bGen.bracketSize;
            BracketList = bGen.CompleteBrackets;
            refundList = bGen.RefundList;

            button1.IsEnabled = true;
            TotalBrackets = BracketList.Count;
            dataGrid1.ItemsSource = selectedBracket;
            refundGrid.ItemsSource = refundList;

            //if there are successful bracket generation...
            if (bGen.CompleteBrackets.Count > 0)
            {

                LoadBrackets(WhichBracket);
                //bind to the selected bracket

                this.textBlock2.Text = "Currently Viewing Bracket ";
                this.textBlock1.Text = (this.WhichBracket + 1) + " / " + BracketList[0].Count;

            }
            else
            {
                return;
            }

        }


        /// <summary>
        /// loadBrackets() Utility Method
        /// 
        /// This method loads the bracket from the observable collection
        /// directly into the bound ArrayList that holds the selected bracket
        /// (selectedBracket) to be displayed in the UI.
        /// </summary>
        /// <param name="WhichBracket"></param>
        private void LoadBrackets(int whichBracket)
        {
            selectedBracket.Clear();

            for (int i = 0; i < BracketList[0][whichBracket].Count; i++)
            {
                selectedBracket.Add(BracketList[0][whichBracket][i]);
            }

        }

        private void LoadRefunds()
        {
            refundList.Clear();

            foreach (RefundedPlayer r in bGen.RefundList)
            {
                refundList.Add(r);

            }

        }
        /// <summary>
        /// getNextBracket() Utility Method
        /// 
        /// This allows the user to cycle through the available 
        /// brackets that were generated
        /// </summary>
        public void GetNextBracket()
        {
            if (BracketList.Count == 0)
            {
                return;
            }
            //if we're at the end of the list
            if (this.WhichBracket == BracketList[0].Count - 1)
            {
                //cycle back to the start.
                this.WhichBracket = 0;
            }
            else
            {
                //otherwise, get the next set of brackets.
                this.WhichBracket++;
            }
            selectedBracket.Clear();
            LoadBrackets(this.WhichBracket);
            this.textBlock2.Text = "Currently Viewing Bracket ";
            this.textBlock1.Text = ((this.WhichBracket + 1) + " / " + this.BracketList[0].Count);



        }
        /// <summary>
        /// Utility Method ClearBrackets()
        /// </summary>
        public void clearBrackets()
        {

            bGen = new BracketGenerator();

            this.bGen.BracketValue = this.selectedBracketValueChoice;
            this.bGen.bracketSize = this.selectedNumberOfPlayersChoice;
            this.bGen.numOfGames = this.selectedNumberOfGamesChoice;

            this.button1.IsEnabled = false;
            this.selectedBracket.Clear();
            this.BracketList.Clear();
            this.refundList.Clear();

            //this.dataGrid1.ItemsSource = null;
            this.WhichBracket = 0;
            this.TotalBrackets = 0;
            this.textBlock1.Text = "";
            this.textBlock2.Text = "";
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            this.GetNextBracket();

        }

        private void Convert()
        {


        }
        /// <summary>
        /// Clear ALL Brackets
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button2_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Are You Sure? \n This Will Clear ALL Brackets!", "Confirm Clear Brackets...", MessageBoxButton.OKCancel) == MessageBoxResult.OK)
            {
                this.clearBrackets();
                button1.IsEnabled = false;
                this.textBlock1.Text = "";
                this.textBlock2.Text = "";
                this.WhichBracket = 0;
            }
            else
            {
                ///do nothing
                return;
            }
        }

        private void button3_Click(object sender, RoutedEventArgs e)
        {

            if (comboBox1.SelectedIndex == -1 || comboBox2.SelectedIndex == -1 || comboBox3.SelectedIndex == -1)
                return;
            else
            {
                this.GenerateBrackets();

                this.WhichBracket = 0;
            }
        }


        /// <summary>
        /// Generate Brackets Button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                if (comboBox1.SelectedIndex == -1 || comboBox2.SelectedIndex == -1 || comboBox3.SelectedIndex == -1)
                    return;
                else
                {
                    generateBracketButton.IsEnabled = false;
                    this.WhichBracket = 0;
                    this.GenerateBrackets();

                    generateBracketButton.IsEnabled = true;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show("Exception at BracketGenerator...\n Message: " + exception.Message + "\nStack Trace: +" + exception.StackTrace);
            }
        }

        //convert selected value in the combobox to set the bracket size up.
        private void ComboBox_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {
            this.selectedNumberOfPlayersChoice = int.Parse(comboBox1.SelectedItem.ToString());
            this.bGen.bracketSize = this.selectedNumberOfPlayersChoice;
            this.comboBox2.IsEnabled = true;
        }

        private void ComboBox_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {
            this.selectedNumberOfGamesChoice = int.Parse(comboBox2.SelectedItem.ToString());
            //this.bGen.numOfGames = this.selectedNumberOfGamesChoice;
            this.comboBox3.IsEnabled = true;
        }

        private void ComboBox_SelectionChanged_3(object sender, SelectionChangedEventArgs e)
        {
            String parsed;
            parsed = comboBox3.SelectedItem.ToString();
            parsed = parsed.Substring(1);
            this.selectedBracketValueChoice = double.Parse(parsed);

            Expander1CheckMark.Visibility = System.Windows.Visibility.Visible;
        }

        /// <summary>
        /// Expander Two Controls
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RadioButton_Checked_1(object sender, RoutedEventArgs e)
        {
            Expander2CheckMark.Visibility = System.Windows.Visibility.Visible;
        }

        private void RadioButton_Checked_2(object sender, RoutedEventArgs e)
        {
            Expander2CheckMark.Visibility = System.Windows.Visibility.Visible;

        }

    }

    #region [ExpanderValueConverters]
    public class ExpanderToBooleanConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (value == parameter);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (System.Convert.ToBoolean(value)) return parameter;
            return null;
        }
    }

    public class ExpanderListViewModel
    {
        public Object SelectedExpander { get; set; }
    }
    #endregion
    //Used to hide or show certain elements depending on user's progress.

}
