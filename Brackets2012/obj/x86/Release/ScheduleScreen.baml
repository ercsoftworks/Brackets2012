   M S B A M L   `   `   `  ����   Brackets2012!    Brackets2012.ScheduleScreen   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.Charting, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Chart, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Qtelerik1http://schemas.telerik.com/2008/xaml/presentation
     	 
     $	��574��$	��909��.��� ���	#FFC5C5C5$	��646��$	��Top=�$��0,-40,0,-32q�.+��� $��Schedules & Events��$
��Left=�$��	0,574,0,0q�$	��Top=�$	��326��$��56��$��36(�  J� Opacity$	  0.3Q�.  (Telerik.Windows.Controls.RadScheduleView  -     Name$ scheduleView��+  %Telerik.Windows.Controls.StyleManager   Theme-  'Telerik.Windows.Controls.ThemeConverter$ Metro $	��909��/  )Telerik.Windows.Controls.ScheduleViewBase   FirstDayOfWeek$ SundayX�$��
0,148,0,89q�   AppointmentsSource �� *Appointments+   ViewDefinitions 0  *Telerik.Windows.Controls.DayViewDefinition  1  +Telerik.Windows.Controls.WeekViewDefinition  2  ,Telerik.Windows.Controls.MonthViewDefinition  5  /Telerik.Windows.Controls.TimelineViewDefinition  �� $��Save Appointments��$
��Left=�$��730,574,0,0q�$	��Top=�$	��169��$��36��,	 	 &Telerik.Windows.Controls.RadRibbonView	  -   $	��Top=�$ Metro  	  ApplicationName$( "Brackets 2012 > Schedules & Events�� 	  IsBackstageOpen .  J� RenderTransformOrigin$ 0.568,0.454&�$	��148��.@�+
 	 %Telerik.Windows.Controls.RadRibbonTab
  $��	RibbonTab��.@�- 	 'Telerik.Windows.Controls.RadRibbonGroup  $��Events
��$	��196��	   DialogLauncherVisibility$	 Visible=�.@�. 	 (Telerik.Windows.Controls.RadRibbonButton  -   
   Size$
 Large=�$��Center=�$��41��   
LargeImage$/ )Images/ScheduleImages/new_appointment.png��   Text$ 	New Event��$��69��$��Bottom=�$��
-10,0,24,0q�����  �� ElementName$ scheduleView������  j� Stretch$ Uniform=�  -   $ Delete Event��$
 Large=�$2 ,Images/ScheduleImages/delete_appointment.png��   
SmallImage$ Images/Calender.png��$��
15,0,-15,0q�  $��Go To��$	��153��.@�  $ Today��$
 Large=�$% Images/ScheduleImages/today.png��$��	-32,0,0,0q�  $ 
Next Range��$
 Large=�$��
30,0,-30,0q�
������ $) #Images/ScheduleImages/next7days.png��  $	��270��.@�  $
 Large=�$ Day View��$( "Images/ScheduleImages/day_view.png��$��	-31,0,0,0q�  $
 Large=�$ 	Week View��$) #Images/ScheduleImages/week_view.png��$��7,0,-7,0q�  $
 Large=�$ 	Work Week��$) #Images/ScheduleImages/work_week.png��$ 0.807,0.498&�$��
16,0,-16,0q�  $
 Large=�$ 
Month View��$* $Images/ScheduleImages/month_view.png��$��
25,0,-25,0q�  $
 Large=�$ TimeLine View��$- 'Images/ScheduleImages/timeline_view.png��$��
30,0,-30,0q�