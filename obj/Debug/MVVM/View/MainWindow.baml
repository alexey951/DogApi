   M S B A M L   `   `   `  ����B  >dog api, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:dog_apidog_api  5   	   ?$clr-namespace:dog_api.MVVM.ViewModeldog_api.MVVM.ViewModel  6-   3clr-namespace:dog_api.Resurcesdog_api.Resurces  6e   "    dog_api.MVVM.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:dog_api     5   	   ;
viewmodels$clr-namespace:dog_api.MVVM.ViewModel     6-   1local1clr-namespace:dog_api.Resurces     6e     � Icon$  /Resurces/icon/dog.png��5   0    � Title$ DogApi Desktop��5   	   $	��550��6    $	��800��6-    � WindowStartupLocation$ CenterScreen=�69    � DataContext 5	      *  $dog_api.MVVM.ViewModel.MainViewModel  5
   
   .��5      � ���	#FF1E1E1E � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   � $��0��6   .+�5      �� $��1q�6   
���   �$��35q�6=   ._�5      �� $��UniformToFill=�6   $��Center=�6L   $��Center=�6i   ��60   �� *
DogImage+6i   5      5      � 5   
   $��1��6   .+�5      �� $��Center=�6   $��Center=�64   .+�5      ��  �� SelectedIndex$ 1��5      $��5q�5      
������ 
���������5      �� *Breeds+ �� SelectedItem 5      �� *
SelectItem+5       �� 5!      $��Next dog��6    � Cursor$
 Hand��6,   ��6:   �� *	NextDog+5"      5#      5$      5%      