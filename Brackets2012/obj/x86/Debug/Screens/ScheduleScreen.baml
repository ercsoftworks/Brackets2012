   M S B A M L   `   `   `  ����  Brackets2012!    Brackets2012.ScheduleScreen   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u qTelerik.Windows.Controls.EntityFramework, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Otelerik1http://schemas.telerik.com/2008/xaml/presentation	     	 
    5      $	��574��5      $	��909��6,   .��5      � ���	#FFC5C5C5$	��646��6"   $	��Top=�6/   $��0,-40,0,-32q�6G   .+�5	   
   �� $��Schedules & Events��6   $
��Left=�61   $��	0,574,0,0q�6L   $	��Top=�6_   $	��326��6w   $��56��6�   $��36(�6�     J� Opacity$	  0.3Q�6�   .  (Telerik.Windows.Controls.RadScheduleView  5   
   -   5          Name$ scheduleView��5   "   +  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ Metro 6d   $	��909��6�   /  )Telerik.Windows.Controls.ScheduleViewBase   FirstDayOfWeek$ SundayX�6�   $��
0,148,0,89q�6�      AppointmentsSource 68   �� *Appointments+   ViewDefinitions 5      0  *Telerik.Windows.Controls.DayViewDefinition  5      1  +Telerik.Windows.Controls.WeekViewDefinition  5      2  ,Telerik.Windows.Controls.MonthViewDefinition  5      5  /Telerik.Windows.Controls.TimelineViewDefinition  5      5      �� 5   
   $��Save Appointments��6   $
��Left=�6-   $��730,574,0,0q�6H   $	��Top=�6]   $	��169��6u   $��36��6�   ,	 	 &Telerik.Windows.Controls.RadRibbonView	  5   
   -   5        $	��Top=�5       $ Metro 68    	  ApplicationName$( "Brackets 2012 > Schedules & Events��6[    	  IsBackstageOpen .  J� RenderTransformOrigin$ 0.568,0.454&�6�   $	��148��6  .@�5      +
 	 %Telerik.Windows.Controls.RadRibbonTab
  $��	RibbonTab��6#   .@�5      - 	 'Telerik.Windows.Controls.RadRibbonGroup  $��Events
��6)   $	��196��6C   	   DialogLauncherVisibility$	 Visible=�6O   .@�5      . 	 (Telerik.Windows.Controls.RadRibbonButton  -   5        
   Size$
 Large=�5   /   $��Center=�6<   $��41��6Y      
LargeImage$0 */Images/ScheduleImages/new_appointment.png��6d      Text$ 	New Event��6�   $��69��6�   $��Bottom=�6�   $��
-10,0,24,0q�6  ��6�   ��  �� ElementName$ scheduleView����5      �� 5       j� Stretch$ Uniform=�6)   5        5      -   5        $ Delete Event��5   .   $
 Large=�6B   $3 -/Images/ScheduleImages/delete_appointment.png��6p      
SmallImage$ /Images/Calender.png��6�   $��
15,0,-15,0q�6�   5         5!      $��Go To��6)   $	��153��68   .@�5"        $ Today��6.   $
 Large=�6;   $&  /Images/ScheduleImages/today.png��6H   $��	-32,0,0,0q�6v     5#      $ 
Next Range��6.   $
 Large=�6@   $��
30,0,-30,0q�6M   
������ $* $/Images/ScheduleImages/next7days.png��6z   5$        5%      $	��270��6)   .@�5&        $
 Large=�6.   $ Day View��6;   $) #/Images/ScheduleImages/day_view.png��6L   $��	-31,0,0,0q�6}     5'      $
 Large=�6.   $ 	Week View��6;   $* $/Images/ScheduleImages/week_view.png��6M   $��7,0,-7,0q�6     5(      $
 Large=�6.   $ 	Work Week��6;   $* $/Images/ScheduleImages/work_week.png��6M   $ 0.807,0.498&�6   $��
16,0,-16,0q�6�     5)      $
 Large=�6.   $ 
Month View��6;   $+ %/Images/ScheduleImages/month_view.png��6M   $��
25,0,-25,0q�6�     5*      $
 Large=�6.   $ TimeLine View��6;   $. (/Images/ScheduleImages/timeline_view.png��6P   $��
30,0,-30,0q�6�   5+      5,      5-      5/      50      