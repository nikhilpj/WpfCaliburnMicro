   M S B A M L   `   `   `  ����@  <WpfUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WpfUI.ViewsWpfUI.Views  5   	   3clr-namespace:WpfUI.ViewModelsWpfUI.ViewModels  61       WpfUI.Views.ShellView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WpfUI.Views     5   	   5
viewmodelsclr-namespace:WpfUI.ViewModels     61     � Title$  	ShellView��5   	   $	��600��6   $
��1000��6(   
�������.��5	      �  � ColumnDefinitions 5
   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��20 �6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5      �� $��1��67   $��1��6D   $��1��6T   $��2q�6h   ��6   ��  �� Path$ FullName�6h   �� 5!   
   $��1��6   $��4��6   $��	AddPerson��6/   6E   �� 5"   
   $��1��6   $��5��6   .��6.   Edit65   �� 5%      -   5         ��Name$ 	FirstName��5%   V   $	��100��6   $��2��6%   $��1��62   $��2��6B   $��2q�6i   6v   �� 5&   
   -   5        $ LastName��5&   R   $	��100��6   $��2��6!   $��3��6.   $��2��6>   $��2q�6d   6q   �� 5)   
   -   5         ��Name$ People��5)   ;   $��3��6   $��1��6    $��2q�60    �� DisplayMemberPath$ 	FirstName��6�    �� SelectedItem 6K   �� $ SelectedPerson� �� Mode$ OneWayToSource=�6�   �� 5*   
   -   5        	 ��Name$	 SelectedPerson_LastName��5*   <   $��3��6   $��2��6!   $��2q�61   6_   �� 5.   
   -   5        
 ��Name$
 	ClearText��5.   9   $��4��6   $��1��6   $��2q�6.   .��6L   
Clear Name6X   �� 52   
   -   5        $
 LoadPageOne��52      $��5��6&   $��1��63   $��2q�6C   .��6N   Load Page one6]   �� 53   
   -   5        $
 LoadPageTwo��53      $��5��6&   $��2��63   $��2q�6C   .��6N   Load Page two6]   &   System.Windows.Controls.DataGrid  59   
   -   5        $
��List��59      $��6��6   $��3��6,   $ 	FirstName��6_      AlternatingRowBackground
 �"�"� �� AlternationCount$ 2��6�   ��6@   �� *People+   Columns 5:      4  .System.Windows.Controls.DataGridTemplateColumn  5<      ,  &System.Windows.Controls.DataGridColumn   Header$ Actions��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6:      CellTemplate 5=      �� 5>      .R�5?      �� $
��Edit��6%   66   5@      5B      5D      �� 5H   
   -	   5         ��Name$ 
ActiveItem��5H   K   $��7��6   $��1��6'   $��5��67   6a   5I      5J      