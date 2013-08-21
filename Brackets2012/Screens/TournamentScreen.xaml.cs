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
using Brackets2012;
using C5;
using System.Windows.Media.Animation;

namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for TournamentScreen.xaml
    /// </summary>
    public partial class TournamentScreen : UserControl
    {
        public static RoutedEvent HomeClick;

        Storyboard storyBoard = new Storyboard();
        TimeSpan duration = new TimeSpan(0, 0, 1);
        DoubleAnimation animation = new DoubleAnimation();

        CreateTournamentControl createTournament = new CreateTournamentControl();
        //DefineRulesControl defineRules = new DefineRulesControl();
        PrizeFundControl prizeFund = new PrizeFundControl();
        BettingControl createBets = new BettingControl();
        BracketScreen genBrackets = new BracketScreen();

        //backups of the each of the controls
        CreateTournamentControl savedCreateTouranment = new CreateTournamentControl();
        //DefineRulesControl savedDefineRules = new DefineRulesControl();
        PrizeFundControl savedPrizeFund = new PrizeFundControl();
        BettingControl savedCreateBets = new BettingControl();
        BracketScreen savedGenBrackets = new BracketScreen();

        public TournamentScreen()
        {
            storyBoard.Begin(this);
            InitializeComponent();
       
            tournamentGrid.Children.Add(createTournament);
        }

        /**    
        public event RoutedEventHandler Click
        {
        add
        {
        base.AddHandler(HomeClick, value);
        }
        remove
        {
        base.RemoveHandler(HomeClick, value);
        }
        }
        **/
        public void BackupSubControls()
        {
            this.savedCreateTouranment = this.createTournament;
            this.savedCreateBets = this.createBets;
            this.savedPrizeFund = this.prizeFund;
           // this.savedDefineRules = this.defineRules;
            this.savedGenBrackets = this.genBrackets;
        }


        //Betting Button event handler
        private void RadRibbonButton_Click_2(object sender, RoutedEventArgs e)
        {
            BackupSubControls();
            tournamentGrid.Children.Clear();
            tournamentGrid.Children.Add(createBets);

            animation.From = 0.0;
            animation.To = 1.0;
            animation.Duration = new Duration(duration);
            Storyboard.SetTargetName(animation, tournamentGrid.Name);
            Storyboard.SetTargetProperty(animation, new PropertyPath(Control.OpacityProperty));
            storyBoard.Children.Add(animation);
            storyBoard.Begin(this);

        }

        //Create Tournament event handler
        private void RadRibbonButton_Click_3(object sender, RoutedEventArgs e)
        {
            BackupSubControls();
            tournamentGrid.Children.Clear();
            tournamentGrid.Children.Add(createTournament);
            storyBoard.Begin(this);
        }

        //Prize Fund Event Handler
        private void RadRibbonButton_Click_4(object sender, RoutedEventArgs e)
        {
            BackupSubControls();
            storyBoard.Begin(this);

            tournamentGrid.Children.Clear();
            tournamentGrid.Children.Add(prizeFund);

            
        }

        //Brackets Generation Button
        private void RadRibbonButton_Click_5(object sender, RoutedEventArgs e)
        {
            BackupSubControls();
            tournamentGrid.Children.Clear();
            tournamentGrid.Children.Add(genBrackets);

            storyBoard.Begin(this);
        }

        private void RadRibbonView_SelectionChanged_1(object sender, Telerik.Windows.Controls.RadSelectionChangedEventArgs e)
        {

        }
    }
}
