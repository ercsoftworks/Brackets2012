   M S B A M L   `   `   `  ����L  HBrackets2012, Version=2012.1.419.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Brackets2012Brackets2012  5          Brackets2012.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u qTelerik.Windows.Controls.EntityFramework, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Otelerik1http://schemas.telerik.com/2008/xaml/presentation	     	 
    5      ]Custom@http://schemas.microsoft.com/winfx/2006/xaml/presentation/ribbon	     	 
    5      6localclr-namespace:Brackets2012	     	 
    5      -   5          �Name$
  Home��5      $	��690��6   $	��909��6     � 
ResizeMode$ NoResize=�5       � Title$ Brackets 2012��6'    � WindowStartupLocation$ CenterScreen=�5	       � WindowStyle$
 None=�66    � 	Resources 5
       
  Color1��%+   &	        ��5   
   	#FF25A0DA��6*   5       J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5   
      
BlurRadius$ 20Q�6      ShadowDepth$ 10Q�6+   .��5      � -   5        	 �Name$	 MainGrid��5      $
��Left=�6   $	��694��68   $	��Top=�6E   $	��909��6]   $��0,-4,0,0q�6i   .+�5   
   � -   5        $	 TopGrid��5      $
��Left=�6    $��40��6;   $	��Top=�6G   $	��252��6_   $��	657,2,0,0q�6k   ��5      �� 5      
 �� Color#
 �   6"    5        5      $ 20Q�6#   $ 10Q�63   .+�5      (  "Telerik.Windows.Controls.RadButton  -   5          Name$ 
HomeButton��5       $
��Left=�64   $��10,0,0,0q�6O   $	��Top=�6a   $��40��6y   $��77��6�   $��13(�6�    � ToolTip$ Go To The Home Screen��6�   |�.  ��5      �� 5       �� ImageSource$ Images/MB_0023_home2.png��6!    j� Stretch$ Uniform=�6H   5        5      $�� ��6    $
��Left=�6+   $��	174,0,0,0q�6F   $	��Top=�6Y   $��40��6q   $��77��6}   $ Options and Settings��6�   ��5       �� 5!      $! Images/MB_0020_sett-big.png��6!   $ Uniform=�6K   5#        5&      $�� ��6    $
��Left=�6+   $��92,0,0,0q�6F   $	��Top=�6X   $��40��6p   $��77��6|   $ Controls��6�   ��5'      �� 5(      $' !Images/MB_0038_Control-Panel1.png��6!   $ Uniform=�6Q   5*      � 5+      -   5        $
��Left=�5+      $��40��6.   $��
-543,0,0,0q�6:   $	��Top=�6N   $	��548��6f   ���	#FF25A0DA.+�5,      �� 
�������$��Brackets 2012��6+   $��18(�6C   $
��Left=�6Q   $��	224,3,0,0q�6l   5-      5.      � 50   
   -   5        $	 ContentGrid��50      $	��652��6X   $	��Top=�6e   ���	#FF837F7F$��0,42,0,0q�6�   ��6$   ��  �� ElementName$ MainGrid�� �� Mode$ OneWay=�.+�52        -   5        $ TournamentButton��52       $��CREATE TOURNAMENT��6:   $
��Left=�6V   $��
23,106,0,0q�6q   $	��Top=�6�   $��97��6�   $	��216��6�   $��20(�6�   ���	#FF00B159$��Segoe UI Light)�6�   
�������$= 7Setup Tournaments, Create Prize Funds and Make Brackets��6?  ��6�   Z�  53        54      $ 10Q�6'   $ 35Q�68   56        57      -   5        $ FinancialButton��57       $��
FINANCIALS��69   $
��Left=�6N   $��266,105,0,0q�6i   $	��Top=�6~   $��98��6�   $	��216��6�   ���	#FFD11141$��20(�6�   $��Segoe UI Light)�6�   
�������$A ;Manage and View Individual, Squad, and Tournament Finanaces��69  ��6�   Z�  58        59      $ 10Q�6'   $ 35Q�68   5;        5<      -	   5        $ SchedulerButton��5<       $��EVENTS & SCHEDULES��69   $
��Left=�6Z   $��514,105,0,0q�6u   $	��Top=�6�   $��97��6�   $	��209��6�   ���	#FF7C4199$��20(�6�   $��Segoe UI Light)�6�   
�������$  Create and Schedule Events��6E  ��6�   Z�  5=        5>      $ 10Q�6'   $ 35Q�68   5@        5A      -
   5        $ 	RunButton��5A       $��RUN TOURNAMENT��63   $
��Left=�6L   $��
23,229,0,0q�6g   $	��Top=�6{   $��97��6�   $	��216��6�   ���	#FF0751B6$��20(�6�   $��Segoe UI Light)�6�   ���	#FFFFFCFC��6�   Z�  5B        5C      $ 10Q�6'   $ 35Q�68   5E        5F      -   5        $ UtilityButton��5F       $��PLAYERS & LEAGUE��67   $
��Left=�6V   $��266,228,0,0q�6q   $	��Top=�6�   $��98��6�   $	��216��6�   ���	#FFF37735$��20(�6�   $��Segoe UI Light)�6�   ���	#FFFFFCFC��6�   Z�  5G        5H      $ 10Q�6'   $ 35Q�68   5J        5K      -   5        $ ReportButton��5K       $��REPORTS��66   $
��Left=�6H   $��514,228,0,0q�6c   $	��Top=�6x   $��97��6�   $	��209��6�   ���	#FFFFC425$��20(�6�   $��Segoe UI Light)�6�   ���	#FFFFFCFC��6�   Z�  5L        5M      $ 10Q�6'   $ 35Q�68   5O      �� 5P      $��Select an Option��6   $
��Left=�6/   $��3,29,0,0q�6J   $	��Top=�6\   $	��284��6t   $��61��6�   $��36(�6�   $��Segoe UI Light)�6�   
�������6�     5Q      -   5        $ 
QuickBrack��5Q       $��
Feature #1��64   $
��Left=�6I   $��184,362,0,0q�6d   $	��Top=�6y   $��97��6�   $	��123��6�   ���	#FF00B159$��20(�6�   $��Segoe WP SemiLight)�6�   ���	#FFFFFCFC��6�   Z�  5R        5S      $ 10Q�6'   $ 35Q�68   5U        5V      -   5        $ QuickButton1��5V       $��QuickBracket��66   $
��Left=�6M   $��
23,362,0,0q�6h   $	��Top=�6|   $��96��6�   $	��123��6�   ���	#FFD11141$��20(�6�   $��Segoe WP SemiLight)�6�   ���	#FFFFFCFC��6�   Z�  5W        5X      $ 10Q�6'   $ 35Q�68   5Z        5[      -   5        $ QuickButton2��5[       $��
Feature #2��66   $
��Left=�6K   $��348,362,0,0q�6f   $	��Top=�6{   $��97��6�   $	��123��6�   $��20(�6�   $��Segoe WP SemiLight)�6�   ���	#FFFFFCFC���	#FF00AEDB��6�   Z�  5\        5]      $ 10Q�6'   $ 35Q�68   5_      5a      &   Telerik.Windows.Controls.RadMenu  5b   
   $��40��6   $��	0,2,796,0q�6'   $	��Top=�6:   }�. ���	#FF25A0DA���	#FF848484
�������$��16(�6�   $��Segoe WP)�6�    5c        5d      .@�5f      *  $Telerik.Windows.Controls.RadMenuItem  $
��File��6"   $	��37 ��60   .@�5g        $
��Save��6&   
���   �64     5h      $
��Quit��6&   
���   �64   5i        5j      $��Item 2��6"   .@�5k        $��
Sub Item 3��6&     5l      $��
Sub Item 4��6&     5m      $��
Sub Item 5��6&   5n      5o      5q      5r      