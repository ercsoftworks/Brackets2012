   M S B A M L   `   `   `  ���� L  HBrackets2012, Version=2012.1.419.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Brackets2012Brackets2012      Brackets2012.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.Charting, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Chart, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Qtelerik1http://schemas.telerik.com/2008/xaml/presentation
     	 
     _Custom@http://schemas.microsoft.com/winfx/2006/xaml/presentation/ribbon
     	 
     8localclr-namespace:Brackets2012
     	 
     -     �Name$
  Home��$	��690��$	��909�� � 
ResizeMode$ NoResize=� � Title$ Brackets 2012�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � 	Resources  
  Color1��%   &	        ��	#FF25A0DA�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 20Q�   ShadowDepth$ 10Q�.��� -   	 �Name$	 MainGrid��$
��Left=�$	��690��$	��Top=�$	��909��$��	0,0,-5,-3q�.+�� -   $	 TopGrid��$
��Left=�$��40��$	��Top=�$	��252��$��	657,2,0,0q����� 
 �� Color#
 �      $ 20Q�$ 10Q�.+�(  "Telerik.Windows.Controls.RadButton  -     Name$ 
HomeButton��$
��Left=�$��10,0,0,0q�$	��Top=�$��40��$��77��$��13(� � ToolTip$ Go To The Home Screen��|�.  ����  �� ImageSource$ Images/MB_0023_home2.png�� j� Stretch$ Uniform=�  $�� ��$
��Left=�$��	174,0,0,0q�$	��Top=�$��40��$��77��$ Options and Settings������ $! Images/MB_0020_sett-big.png��$ Uniform=�  $�� ��$
��Left=�$��92,0,0,0q�$	��Top=�$��40��$��77��$ Controls������ $' !Images/MB_0038_Control-Panel1.png��$ Uniform=�� -   $
��Left=�$��40��$��
-543,0,0,0q�$	��Top=�$	��548�����	#FF25A0DA.+��� 
�������$��Brackets 2012��$��18(�$
��Left=�$��	240,3,0,0q�� -   $	 ContentGrid��$	��648��$	��Top=����	#FF837F7F$��0,42,0,0q�����  �� ElementName$ MainGrid�� �� Mode$ OneWay=�.+�  -   $ TournamentButton��$��CREATE TOURNAMENT��$
��Left=�$��
23,106,0,0q�$	��Top=�$��97��$	��216��$��20(����	#FF00B159$��Segoe WP SemiLight)�
�������$= 7Setup Tournaments, Create Prize Funds and Make Brackets����Z�    $ 10Q�$ 35Q�  -   $ FinancialButton��$��
FINANCIALS��$
��Left=�$��266,105,0,0q�$	��Top=�$��98��$	��216�����	#FFD11141$��20(�$��Segoe WP SemiLight)�
�������$A ;Manage and View Individual, Squad, and Tournament Finanaces����Z�    $ 10Q�$ 35Q�  -	   $ SchedulerButton��$��EVENTS & SCHEDULES��$
��Left=�$��514,105,0,0q�$	��Top=�$��97��$	��209�����	#FF7C4199���	#FF7C4199$��20(�$��Segoe WP SemiLight)�
�������$  Create and Schedule Events��   $ 10Q�$ 35Q�  -
   $ 	RunButton��$��RUN TOURNAMENT��$
��Left=�$��
23,229,0,0q�$	��Top=�$��97��$	��216�����	#FF0751B6$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC��Z�    $ 10Q�$ 35Q�  -   $ UtilityButton��$��PLAYERS & LEAGUE��$
��Left=�$��266,228,0,0q�$	��Top=�$��98��$	��216�����	#FFF37735$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC��Z�    $ 10Q�$ 35Q�  -   $ ReportButton��$��REPORTS��$
��Left=�$��514,228,0,0q�$	��Top=�$��97��$	��209�����	#FFFFC425$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC��Z�    $ 10Q�$ 35Q��� 
���   �$��1q�$
��Left=�$	��696��$��	0,-48,0,0q�$	��Top=�$��3��   �� 
���   �$	��0.1q�$
��Left=�$��5��$��
3,644,0,-1q�$	��Top=�$	��899�� J� RenderTransformOrigin$ 0.5,0.5&�   $ 10Q�$ 11Q�z�V� .~���  �� ScaleY$ -1Q��� �� T� �� $��Select an Option��$
��Left=�$��3,29,0,0q�$	��Top=�$	��284��$��61��$��36(�$��Segoe WP Light)�
�������  -   $ 
QuickBrack��$��
Feature #1��$
��Left=�$��184,362,0,0q�$	��Top=�$��97��$	��123�����	#FF00B159$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC��Z�    $ 10Q�$ 35Q�  -   $ QuickButton1��$��QuickBracket��$
��Left=�$��
23,362,0,0q�$	��Top=�$��96��$	��123�����	#FFD11141$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC��Z�    $ 10Q�$ 35Q�  -   $ QuickButton2��$��
Feature #2��$
��Left=�$��348,362,0,0q�$	��Top=�$��97��$	��123��$��20(�$��Segoe WP SemiLight)����	#FFFFFCFC���	#FF00AEDB��Z�    $ 10Q�$ 35Q�&   Telerik.Windows.Controls.RadMenu  $��40��$��	0,2,796,0q�$	��Top=�}�. ���	#FF25A0DA���	#FF848484
�������$��16(�$��Segoe WP)�   .@�*  $Telerik.Windows.Controls.RadMenuItem  $
��File��$	��37 ��.@�  $
��Save��
���   �  $
��Quit��
���   �  $��Item 2��.@�  $��
Sub Item 3��  $��
Sub Item 4��  $��
Sub Item 5��