   M S B A M L   `   `   `  ���� B  >busCheb, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1      WpfApp1.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:WpfApp1       � Title$  busCheb��$	��450��$	��800��$	��300��$	��500�� J� Opacity$ 10Q� � Icon$ img/icon.png��.���  � ColumnDefinitions �� $	��17* ��� $	��23* � � RowDefinitions �� $��66 ��� .+��� $��/img/fon.png��$��2��$��2��$��UniformToFill=��� ���	#7FFFFFFF �� CornerRadius$ 5��$��	10,6,10,0q�$
��auto��$��Center=�$��40�� J� RenderTransformOrigin$ 0.503,0.553&��� $��Остановка:��$
��Left=�$��10,5,0,0q�$��Center=�$��20(�$��36��$	��111���� -    ��Name$ textBox1��$��30��$
��auto��$��
122,6,14,0q� �� TextWrapping$
 Wrap=�$��
Поиск��$��Center=�$��20(�.��	 � 	Resources	 
 �� 
TargetType �� Property �� Value��%9   '��       �� "
 ��.���  �@��CornerRadius$ 5��.���� -    ��Name$ stationsBox��$��16(�$��Calibri)�$
��auto��$
��auto��$��1��$��
10,7,10,11q�$ 0.5,0.5&����	#7FFFFFFF
���   ����	#7FFFFFFF	 ��%9   '��       �� "
 ��.���  �@��CornerRadius$ 5��z�V� .~���  �� ScaleX$ 1Q��� �� T� &   System.Windows.Controls.DataGrid  -     Name$ busInfo��   
IsReadOnly . $
��auto��$
��auto�����	#7FFFFFFF$��1��   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 140    GridLinesVisibility$
 None=�   SelectionMode$ Single=�$��10,16,10,10q�$��2�����	#7FFFFFFF	 ��%9   '��       �� "
 ��.���  �@��CornerRadius$ 5��