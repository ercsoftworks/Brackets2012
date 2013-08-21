using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for CreateTournamentControl.xaml
    /// </summary>
    public partial class CreateTournamentControl : UserControl
    {
        String[] HandiScratch = { "Handicap", "Scratch" };
        String[] NumberOfGames = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" };
        String[] MaxScore = { "200", "300", "450", "600", "9999" };

        public CreateTournamentControl()
        {
            InitializeComponent();
            HandiScratchBox.ItemsSource = HandiScratch;
            SquadBox.ItemsSource = NumberOfGames;
            MaxScoreBox.ItemsSource = MaxScore;
        }

        private void RadExpander_Expanded_1(object sender, Telerik.Windows.RadRoutedEventArgs e)
        {
        }
    }
}