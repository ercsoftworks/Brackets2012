using System;
using System.Collections.Generic;
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
using Telerik.Windows.Controls;
using C5;
using System.Windows.Media.Animation;
using System.Collections.ObjectModel;


namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public  partial class MainWindow : Window
    {
      
     #region AnimationControls
        Storyboard storyBoard = new Storyboard();
        TimeSpan duration = new TimeSpan(0, 0, 1);
        DoubleAnimation animation = new DoubleAnimation();
     #endregion AnimationControls

     #region UserControls
        TournamentScreen _tournamentScreen = new TournamentScreen();
        ScheduleScreen _scheduleScreen = new ScheduleScreen();
        BracketScreen _bracketScreen = new BracketScreen();
        FinancialScreen _financialScreen = new FinancialScreen();
        PlayerScreen _playerScreen = new PlayerScreen();
        public ObservableCollection<UIElement> savedMainControls = new ObservableCollection<UIElement>();
     #endregion UserControls
        
        public MainWindow()
        {
            InitializeComponent();
            animation.From = 0.0;
            animation.To = 1;
            animation.Duration = new Duration(duration);
            Storyboard.SetTargetName(animation, ContentGrid.Name);
            Storyboard.SetTargetProperty(animation, new PropertyPath(Control.OpacityProperty));
            storyBoard.Children.Add(animation);
            storyBoard.Begin(this);
            

            //back up main screen
            foreach (UIElement uie in ContentGrid.Children)
            {
                savedMainControls.Add(uie);
            }
              
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
        
        

        }

        public void ClearContent()
        {
         
           

        }
  

        private void TournamentButton_Click(object sender, RoutedEventArgs e)
        {
            this.ContentGrid.Children.Clear();
            this.ContentGrid.Children.Add(_tournamentScreen);
            
        }

        private void FinancialButton_Click_1(object sender, RoutedEventArgs e)
        {
            this.ContentGrid.Children.Clear();
            this.ContentGrid.Children.Add(_financialScreen);
            
        }

        private void SchedulerButton_Click_1(object sender, RoutedEventArgs e)
        {
            this.ContentGrid.Children.Clear();
            this.ContentGrid.Children.Add(_scheduleScreen);

        }

        private void RunButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void UtilityButton_Click_1(object sender, RoutedEventArgs e)
        {
            this.ContentGrid.Children.Clear();
            this.ContentGrid.Children.Add(_playerScreen);
        }

        private void ReportButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void HomeButton_Click(object sender, RoutedEventArgs e)
        {
           
                this.ContentGrid.Children.Clear();

                foreach (UIElement uie in savedMainControls)
                {
                    ContentGrid.Children.Add(uie);
                }

                storyBoard.Begin(this);
           
        }

        private void Grid_PreviewMouseDown_2(object sender, MouseButtonEventArgs e)
        {
            DateTime m_headerLastClicked = DateTime.Now;
            
            if (Mouse.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
             
        }

        private void MetroButton_Loaded_1(object sender, RoutedEventArgs e)
        {

        }
     




    }
}
