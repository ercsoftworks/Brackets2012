   M S B A M L   `   `   `  ����   Brackets2012#    Brackets2012.TournamentScreen   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.Charting, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Chart, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Qtelerik1http://schemas.telerik.com/2008/xaml/presentation
     	 
     .��� -   $��ContentGrid��$
��Auto��$	��909��$	��Top=����� .+�, 	 &Telerik.Windows.Controls.RadRibbonView  -   }�.     ApplicationName$!  Brackets 2012 > Tournaments��$	��909��   IsMinimized .  $��12(�$
��Bold"�����  �� Color$ 	#FF12ACF5��*  $Telerik.Windows.Controls.MetroColors   Color$ 
BoundColor=� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     	Backstage 1 	 +Telerik.Windows.Controls.RadRibbonBackstage     QuickAccessToolBar 1 	 +Telerik.Windows.Controls.QuickAccessToolBar  +  %Telerik.Windows.Controls.StyleManager   Theme )  #Telerik.Windows.Controls.MetroTheme  .@�+ 	 %Telerik.Windows.Controls.RadRibbonTab  $��
Tournament��.@�-	 	 'Telerik.Windows.Controls.RadRibbonGroup	  $��Tournaments��$��89��$��0,0,0,0q�$	��200��$	��Top=�$
��Left=�.@�.
 	 (Telerik.Windows.Controls.RadRibbonButton
  -    
  Text$ New Tournament��	 
  Size$	 Large=�$��77��$��Center=�
 �� 	IsDefault
 . $��0,0,0,0q� 
  
LargeImage$ /Images/MB_0010_tasks.png�� � IsSharedSizeScope . 
  $	 Large=�$ Details��$��Center=�$��45��$��69��}�.  � UseLayoutRounding .  $��Center=�$��Center=�$ Images/MB_0007_book.png��$��15,0,8,0q�	  $��Manage Players��$	��185��$��0,0,0,0q�
���   �.@�
  $	 Add��$	 Large=�$ Images/user_add.png��$��	-31,0,0,0q�
  $ Remove��$	 Large=�$ Images/user-delete.png��$��
16,0,-16,0q�
  $
 View��$	 Large=�$ Images/viewer.gif��$��
26,0,-26,0q�	  $��3. Prize Fund Setup��$	��179��.@�
  -   $	 Large=�$	 New��$��Center=�$��38��$ Images/dollar_sign.png��$��
-14,0,40,0q�
  $	 Large=�$ Modify��$��-12,0,-24,0q�$! Images/MB_0002_Visitors.png��$��69��$	��Top=�	  $��4. Create Betting��$	��149��.@�
  -   $��	BetButton��$��Center=�$	 Large=�$ Side Pots, Doubles, etc.��$��84��$��10,0,2,0q�$ Images/roulette_bets.png��	  $��5. Brackets��$	��103��$��0,1,0,-1q�.@�
  -   $��	Generate!��� -    �Name$ tournamentGrid��$
��Left=�$	��445��$��
0,143,0,-7q�$	��Top=�$	��909�����	#FFC5C5C5