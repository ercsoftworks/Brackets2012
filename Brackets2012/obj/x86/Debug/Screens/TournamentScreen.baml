   M S B A M L   `   `   `  ����  Brackets2012#    Brackets2012.TournamentScreen   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u qTelerik.Windows.Controls.EntityFramework, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.326.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Otelerik1http://schemas.telerik.com/2008/xaml/presentation	     	 
    5      .��5	      � -   5        $��ContentGrid��5	      $
��Auto��6   $	��909��6-   $	��Top=�6:   ��5
   
   �� 5      .+�5   
   , 	 &Telerik.Windows.Controls.RadRibbonView  -   5        }�.     ApplicationName$!  Brackets 2012 > Tournaments��5   5   $	��909��6f      IsMinimized .  $��12(�6�   $
��Bold"�6�   ��5      �� 5       �� Color$ 	#FF12ACF5��6"   *  $Telerik.Windows.Controls.MetroColors   Color$ 
BoundColor=�64    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         	Backstage 5      1 	 +Telerik.Windows.Controls.RadRibbonBackstage  5         QuickAccessToolBar 5      1 	 +Telerik.Windows.Controls.QuickAccessToolBar  5      +  %Telerik.Windows.Controls.StyleManager   Theme 5      )  #Telerik.Windows.Controls.MetroTheme  5      .@�5      + 	 %Telerik.Windows.Controls.RadRibbonTab  $��
Tournament��6#   .@�5      -	 	 'Telerik.Windows.Controls.RadRibbonGroup	  $��Tournaments��6)   $��89��6>   $��0,0,0,0q�6J   $	��200��6[   $	��Top=�6g   $
��Left=�6   .@�5       .
 	 (Telerik.Windows.Controls.RadRibbonButton
  -   5         
  Text$ New Tournament��5    .   	 
  Size$	 Large=�6E   $��77��6R   $��Center=�6]   
 �� 	IsDefault
 . $��0,0,0,0q�6�    
  
LargeImage$ /Images/MB_0010_tasks.png��6�    � IsSharedSizeScope . 6�   
  5!      $	 Large=�6   $ Details��6'   $��Center=�67   $��45��6T   $��69��6_   }�.  � UseLayoutRounding .  $��Center=�6�   $��Center=�6�   $ /Images/MB_0007_book.png��6�   $��15,0,8,0q�6�   5#      	  5$      $��Manage Players��6)   $	��185��6A   $��0,0,0,0q�6M   
���   �.@�5%      
  $	 Add��6.   $	 Large=�69   $ /Images/user_add.png��6F   $��	-31,0,0,0q�6h   
  5&      $ Remove��6.   $	 Large=�6<   $ /Images/user-delete.png��6I   $��
16,0,-16,0q�6n   
  5'      $
 View��6.   $	 Large=�6:   $ /Images/viewer.gif��6G   $��
26,0,-26,0q�6g   5(      	  5)      $��3. Prize Fund Setup��6)   $	��179��6F   .@�5*      
  -   5        $	 Large=�5*   .   $	 New��6;   $��Center=�6G   $��38��6e   $ /Images/dollar_sign.png��6�   $��
-14,0,40,0q�6�   
  5+      $	 Large=�6.   $ Modify��6;   $��-12,0,-24,0q�6I   $" /Images/MB_0002_Visitors.png��6^   $��69��6�   $	��Top=�6�   5,      	  5-      $��4. Create Betting��6)   $	��149��6D   .@�5.      
  -   5        $��	BetButton��5.   y   $��Center=�6.   $	 Large=�6K   $ Side Pots, Doubles, etc.��6X   $��84��6�   $��10,0,2,0q�6�   $ /Images/roulette_bets.png��6�   5/      	  50      $��5. Brackets��6)   $	��103��6?   $��0,1,0,-1q�6K   .@�51      
  -   5        $��	Generate!��51   .   6B   52      55      56      � 57   
   -   5         �Name$ tournamentGrid��57      $
��Left=�6'   $	��445��6B   $��
0,143,0,-7q�6O   $	��Top=�6c   $	��909��6{   ���	#FFC5C5C56�   59      5:      