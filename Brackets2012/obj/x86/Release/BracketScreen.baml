   M S B A M L   `   `   `  ���� L  HBrackets2012, Version=2012.1.419.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Brackets2012Brackets2012       Brackets2012.BracketScreen   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:Brackets2012     r nTelerik.Windows.Controls.ScheduleView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.Charting, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Chart, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p	 lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7r nTelerik.Windows.Controls.DataServices, Version=2012.1.215.35, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Qtelerik1http://schemas.telerik.com/2008/xaml/presentation
     	 
     $	��433��$	��909��.��� $	��909��$��
0,-7,0,-72q����	#FFF7F7F7.+��� -     ��Name$  button1��$��Show Next Bracket��$��31��$
��Left=�$��
10,413,0,0q�$	��Top=�$	��159��$
��Bold"�$��13(��� -   $  button2��$��Clear ALL Brackets��$��31��$
��Left=�$��701,445,0,0q�$	��Top=�$	��159��$
��Bold"�$��13(��� -    ��Name$ 
textBlock2��$��27��$
��Left=�$��
10,449,0,0q�$	��Top=�$	��215��$��15(�$
��Bold"�$��Normal$�$��SemiExpanded&� J� RenderTransformOrigin$ 0.505,-0.783&�$ ��Currently Viewing Bracket ���� -   $ 
textBlock1��$��23��$��243,453,461,0q�$	��Top=�$��15(�$
��Bold"�$��Center=�$	��205��$ 0.639,0.348&� � DataContext �� �� -   $  generateBracketButton��$��Generate Brackets!��$
��Bold"�$��13(�$
��Left=�$��
10,363,0,0q�$	��Top=�$	��159��$��31���� -    ��Name$ label1��$)��#Players per Bracket / Bracket Size:��$��28��$
��Left=�$	��Top=�$	��250��$��14(�$
��Bold"�$ 0.448,2.536&�$��10,0,0,0q��� -    ��Name$ 	comboBox1��$
��Left=�$	��Top=�$	��147��$��25��$��	10,33,0,0q��� $'��!Number of Games for this Bracket:��$
��Bold"�$��14(�$
��Left=�$	��Top=�$	��250��$��27��$��	10,69,0,0q��� -   $ 	comboBox2��$
��Left=�$	��Top=�$	��147��$��25��$��
10,101,0,0q�{�.  �� -	   $ 	comboBox3��$
��Left=�$	��Top=�$	��147��$��
10,160,0,0q�$��25��{�.  �� $��
Entry Fee:��$
��Left=�$��
10,128,0,0q�$	��Top=�$��14(�$
��Bold"�$	��209���� $��Standard or Eliminator��$��14(�$
��Left=�$	��Top=�$	��191��$��
10,195,0,0q�$ -0.288,3.586&�	� -
   $��Standard��$
��Left=�$��14(�$	��Top=�$��
16,229,0,0q�	� -   $��
Eliminator��$��14(�$
��Left=�$	��Top=�$��
16,253,0,0q��� -    ��Name$ Expander1CheckMark��$
��Left=�$��29��$��
221,10,0,0q�$	��Top=�$��32��$!��Images/green check mark.png��$y�	Collapsed=� J� OpacityMask ��  �� ImageSource$! Images/green check mark.png��	 j� Stretch$	 Uniform=��� -   $ Expander2CheckMark��$
��Left=�$��29��$��221,229,0,0q�$	��Top=�$��32��$!��Images/green check mark.png��$y�	Collapsed=� �� $! Images/green check mark.png��$	 Uniform=��� $��Generated Brackets��$
��Left=�$��
428,10,0,0q�$	��Top=����� 
 �� ElementName$
 	dataGrid1������ $
 	dataGrid1��.��&   System.Windows.Controls.DataGrid  -     Name$ 	dataGrid1��   AutoGenerateColumns .    AlternatingRowBackground
 ��� �$
��Auto��$
��Left=�$	��Top=�$
��Auto��$��-1,0,0,0q����� $
 selectedBracket���� $��Refund List��$
��Left=�$��
701,10,0,0q�$	��Top=����� $
 
refundGrid������ $
 
refundGrid��.��  -   $ 
refundGrid��$
��Left=�$	��Top=����� $
 
refundList��$  Telerik.Windows.Controls.Label  -     Name$ EntryTotals��$�� ��$
��Left=�$��221,285,0,0q�$	��Top=�$ -1.237,2.318&�$��90��  $��Total Entries:��$
��Left=�$��221,263,0,0q�$	��Top=�$��90��