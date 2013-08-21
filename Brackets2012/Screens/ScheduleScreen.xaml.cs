using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
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
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.ScheduleView;
using Telerik.Windows.Controls.ScheduleView.Snapping;
using Telerik.Windows.Controls.ScheduleView.Design;


namespace Brackets2012
{
    /// <summary>
    /// Interaction logic for ScheduleScreen.xaml
    /// </summary>
    public partial class ScheduleScreen : UserControl
    {
       public ObservableAppointmentCollection Appointments = new ObservableAppointmentCollection();
     //   private AppointmentDialogViewModel appointmentDialogViewModel = new AppointmentDialogViewModel();


        private DelegateCommand setCategoryCommand;
        private DelegateCommand setTimeMarkerCommand;

        private DelegateCommand setTodayCommand;
        private DelegateCommand setWorkWeekCommand;

        private Appointment selectedAppointment;
        private DateTime currentDate;
       // private 



        public DelegateCommand SetCategoryCommand
        {
			get
			{
				return this.setCategoryCommand;
			}
			set
			{
				this.setCategoryCommand = value;
			}
		}

		public DelegateCommand SetTimeMarkerCommand
		{
			get
			{
				return this.setTimeMarkerCommand;
			}
			set
			{
				this.setTimeMarkerCommand = value;
			}
		}

		public DelegateCommand SetTodayCommand
		{
			get
			{
				return this.setTodayCommand;
			}
			set
			{
				this.setTodayCommand = value;
			}
		}

		public DelegateCommand SetWorkWeekCommand
		{
			get
			{
				return this.setWorkWeekCommand;
			}
			set
			{
				this.setWorkWeekCommand = value;
			}
		}

		public Appointment SelectedAppointment
		{
			get
			{
				return this.selectedAppointment;
			}
			set
			{
				this.selectedAppointment = value;
			}
		}



        public ScheduleScreen()
        {
          
            InitializeComponent();
            currentDate = DateTime.Today;
         
            scheduleView.CurrentDate = currentDate;
            scheduleView.AppointmentsSource = this.Appointments;
            scheduleView.ShowCurrentTimeIndicator = true;
        }

     
        //Delete Event Button Event Handler
        private void RadRibbonButton_Click_1(object sender, RoutedEventArgs e)
        {
            RadScheduleViewCommands.DeleteAppointment.Execute(null, scheduleView);

        }

        //New Event Event Handler
        private void RadRibbonButton_Click_2(object sender, RoutedEventArgs e)
        {
        
            RadScheduleViewCommands.CreateAppointmentWithDialog.Execute(null, scheduleView);
        }

        private void RadRibbonView_SelectionChanged_1(object sender, RadSelectionChangedEventArgs e)
        {

        }
        /// <summary>
        /// ///////////////////////////////////////////////////////Command Can Execute
        /// </summary>
        /// <param name="parameter"></param>
        /// <returns></returns>
        /// 
        /**
        public bool SetCategoryCommandCanExecute(object parameter)
        {
            return this.CheckAppointmentSelection();
        }

        public bool SetTodayCommandCanExecute(object parameter)
        {
            return true;
        }

        public bool SetWorkWeekCommandCanExecute(object parameter)
        {
            return this.ActiveViewDefinitionIndex != 2;
        }

        public bool SetTimeMarkerCommandCanExecute(object parameter)
        {
            return this.CheckAppointmentSelection();
        }
        **/
    }


    public class ExampleViewModel<T> : ViewModelBase where T : IAppointment
    {
        private Uri appointmentsSource;
        private ObservableCollection<T> appointments;

        public Uri AppointmentsSource
        {
            get { return this.appointmentsSource; }
            set { this.appointmentsSource = value; }
        }

        public ObservableCollection<T> Appointments
        {
            get
            {
                if (this.appointments == null)
                {
                    this.appointments = new ObservableCollection<T>(LoadAppointmentsSource(this.AppointmentsSource));
                }
                return this.appointments;
            }
        }

        protected static IEnumerable<T> LoadAppointmentsSource(Uri appointmentsSource)
        {
            if (appointmentsSource != null)
            {

				IEnumerable<T> appointments = Application.LoadComponent(appointmentsSource) as IEnumerable<T>;

                DateTime firstDate = appointments.Min(new Func<T, DateTime>(GetStart));

                DayOfWeek firstDay = CultureInfo.CurrentCulture.DateTimeFormat.FirstDayOfWeek;

                DateTime firstDayOfCurrentWeek = DateTime.Today.Subtract(TimeSpan.FromDays((int)DateTime.Today.DayOfWeek - (int)firstDay));

                TimeSpan offset = firstDayOfCurrentWeek - firstDate;

                foreach (IAppointment appointment in appointments)
                {
                    appointment.Start += offset;
                    appointment.End += offset;
                }

                return appointments;
            }
            return Enumerable.Empty<T>();
        }

        private static DateTime GetStart(T a)
        {
            return a.Start.Date;
        }
    }









}


    






  



