   M S B A M L   `   `   `  ����B  >busCheb, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  busCheb��5   	   $	��450��6   $	��800��6&   $	��300��62   $	��500��6B    J� Opacity$ 10Q�6Q    � Icon$ img/icon.png��6^   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��17* �6   �� 5      $	��23* �6    � RowDefinitions 5   
   �� 5      $��66 �6   �� 5      .+�5   
   �� $��/img/fon.png��6   $��2��6&   $��2��6:   $��UniformToFill=�6K   �� 5   
   ���	#7FFFFFFF �� CornerRadius$ 5��6(   $��	10,6,10,0q�69   $
��auto��6L   $��Center=�6Y   $��40��6t    J� RenderTransformOrigin$ 0.503,0.553&�6�   �� 5   
   $��Остановка:��6   $
��Left=�6%   $��10,5,0,0q�6@   $��Center=�6R   $��20(�6m   $��36��6{   $	��111��6�   �� 5   
   -   5         ��Name$ textBox1��5      $��30��6$   $
��auto��60   $��
122,6,14,0q�6=    �� TextWrapping$
 Wrap=�6Q   $��
Поиск��6e   $��Center=�6r   $��20(�6�   .��6�   	 � 	Resources	 5      
 �� 
TargetType �� Property �� Value��%^   '��       �� 5      "
 ��6   .�5      ��  �@��CornerRadius$ 5��65   5      5      .��6!   5      �� 5   
   -   5         ��Name$ stationsBox��5      $��16(�6'   $��Calibri)�65   $
��auto��5       $
��auto��6!   $��1��6V   $��
10,7,10,11q�6c   $ 0.5,0.5&�6w   ���	#7FFFFFFF
���   ����	#7FFFFFFF	 5!      ��%^   '��       �� 5"      "
 ��6   .�5#      ��  �@��CornerRadius$ 5��65   5$      5%      z�5&      V� 5'      .~�5(      ��  �� ScaleX$ 1Q�6%   �� 5)      �� 5*      T� 5+      5,      5.      &   System.Windows.Controls.DataGrid  5/   
   -   5          Name$ busInfo��5/         
IsReadOnly . $
��auto��66   $
��auto��6D   ���	#7FFFFFFF$��1��50         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 140 6#      GridLinesVisibility$
 None=�65      SelectionMode$ Single=�6P   $��10,16,10,10q�6g   $��2��6|   ���	#7FFFFFFF	 51      ��%^   '��       �� 52      "
 ��6   .�53      ��  �@��CornerRadius$ 5��65   54      55      56      57      58      