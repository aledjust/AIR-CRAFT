   M S B A M L   `   `   `  ����k  gTelerik.Windows.Controls.Chart, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7kNclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.ChartTelerik.Windows.Controls  5      Xclr-namespace:Telerik.Windows.Controls.ChartView;assembly=Telerik.Windows.Controls.Chart"Telerik.Windows.Controls.ChartView  5      C ?AirCraft, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:AirCraftAirCraft 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5         AirCraft.Monitoring   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      k gTelerik.Windows.Controls.Input, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u	 qTelerik.Windows.Controls.EntityFramework, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Mtelerik1http://schemas.telerik.com/2008/xaml/presentation   	 
      5      hchartNclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.Chart   	 
      5      v	chartViewXclr-namespace:Telerik.Windows.Controls.ChartView;assembly=Telerik.Windows.Controls.Chart   	 
      5      0localclr-namespace:AirCraft   	 
      5      ASystem&clr-namespace:System;assembly=mscorlib   	 
      5        � DataContext  5	      "  AirCraft.MonitoringViewModel  5
   
    � 	Resources 5         H1 �� 
TargetType �� Property �� Value  
ValueTextT  
ValueTextD  
ValueTextS  	H1Wrapper  CustomButton  StrongBrush �� 
TargetType ��Name ��Name��%�  &	        &	 �     &	 e    &	 *    &	 �    &	 �    7  �� 5   
   " ��6   .�5      ��  � ��$ Segoe UI Light)�6+   �� 5       � ��$ 15(�6)   �� 5       � ��$ Center=�62   5      �� 5   
   " ��6#   .�5      ��  � ��$ Calibri)�6+   �� 5       � ��$ 
ExtraBlack"�6+   �� 5       � ��$ 12(�6)   �� 5       � ��$ Center=�62   5      �� 5   
   " ��6#   .�5      ��  � ��$ Calibri)�6+   �� 5       � ��$ 
ExtraBlack"�6+   �� 5       � ��$ 12(�6)   �� 5       � ��$ Center=�62   5       �� 5"   
   " ��6#   .�5#      ��  � ��$ Calibri)�6+   �� 5$       � ��$ 
ExtraBlack"�6+   �� 5%       � ��$ 12(�6)   �� 5&       � ��$ Center=�62   5'      �� 5)   
   " ��6"   .�5*      ��  � �� �	#FFE2E6E76+   �� 5+       � ��$ 0,0,0,5q�6'   �� 5,       �@��Padding$	 5,3q�6(   5-      �� 5/   
   " ��6%   .�50      ��  � ��
 �����6+   �� 51       � �� �	#FF0000006+   �� 52       � ��$ 3q�6(   �� 53       � ��$ 1,1,0,1q�60   �� 54       � ��8   6,   �� 55       � �� 56      �� 57      " ��6&   .R�58      � .+�59      �� $ 
Background��6%   #��z��69   #��z��6e   #��z��6�   ._�5:   "   �� $ contentPresenter��63   #��z��6M   #��z��6�   #��z��6�   #��z��6�   #��z��6  5;      5<      5=      5?      5@      5C      .��5E      � -   5         �Name$ 
LayoutRoot��5E      	 � RowDefinitions	 5F   
   �� 5G      $
��0.6* �6   �� 5H      $
��0.4* �6   .+�5K   
   %  Telerik.Windows.Controls.RadMap  -   5        $��radMap��5L      $��0��5K      ���	#FFD6D4D7$��1q�5N      
   UseDefaultLayout
 .     UseSpringAnimations .    MouseClickMode$
 None=�5Q         	ZoomLevel$ 5��5R         Center4  .Telerik.Windows.Controls.Map.LocationConverter$ -2.587403,117.5304285 5S         	Providers 5U      9  3Telerik.Windows.Controls.Map.BingMapTrafficProvider  5V       5X        PlaneRegisTemplate ��Name J� OpacityMask+  %Telerik.Windows.Controls.Map.MapLayer   Location ^� ToolTip��%-  &	       �� 5Y      .R�5Z      �� $ 
planeImage��6   -   5        $��30��5[   !   $��30��5\   !   $
��Fill=�6J    �	#FFE66767��6-   �� *
ImgPlane+ 5]   M   �� *Center+ 5^      �� 5_      .+�5`   "   �� ��6,   �� *	RegisName+5a      5c      5d      5e      .@�5f      5  /Telerik.Windows.Controls.Map.VisualizationLayer     ItemTemplate# [ 6L      ItemsSource 6)   �� *
PlaneRegis+6L   5g      � 5j   
   $��1��6   	 5k      �� 5l      $
��Auto �6    �� 5m      $
��Auto �6    �� 5n      $
��Auto �6    �� 5o      $
��Auto �6    �� 5p      $
��Auto �6    �� 5q      $
��Auto �6     � ColumnDefinitions 5s      �� 5t      $
��Auto �6#   �� 5u      $	��150 �6#   �� 5v      $
��Auto �6#   �� 5w      $
��Auto �6#   .+�5z      � $��0��6   $��0��6    .+�5{      �� #��[ 6   ._�5|      �� #��[ 6    $
��Name��6D   5}      5~      � 5      $��1��6   $��0��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $��Plane��6D   5�      5�      � 5�      $��2��6   $��0��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $
��Base��6D   5�      5�      � 5�      $��3��6   $��0��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $��No. Reg Plane��6D   5�      5�      � 5�      $��4��6   $��0��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $��Maintenance��6D   5�      5�      � 5�      $��0��6   $��1��6    .+�5�      �� -   5         ��Name$ LblName��5�   R   #��[ 6   $��5,2,2,2q�6A   6R   5�      � 5�      $��1��6   $��1��6    .+�5�      �� -   5        $ LblPlane��5�   Q   #��[ 6   $��5,2,2,2q�6@   6Q   5�      � 5�      $��2��6   $��1��6    .+�5�      �� -   5        $ LblBase��5�   R   #��[ 6   $��5,2,2,2q�6A   6R   5�      � 5�      $��3��6   $��1��6    .+�5�      �� -   5        $ LblRegisName��5�   R   #��[ 6   $��5,2,2,2q�6A   6R   5�      � 5�      $��4��6   $��1��6    .+�5�      �� -   5        $ 	LblSystem��5�   Q   #��[ 6   $��5,2,2,2q�6@   6Q   5�      � 5�      $��0��6   $��2��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $��Status��6D   5�      5�      � 5�      $��1��6   $��2��6    .+�5�      �� #��[ 6   ._�5�      �� #��[ 6    $��Remark��6D   5�      5�      � 5�      $��0��6   $��3��6    .+�5�      �� -	   5        $ 	LblStatus��5�   Q   #��[ 6   $��5,2,2,2q�6@   6Q   5�      � 5�      $��1��6   $��3��6    $��5��60   .+�5�      �� -
   5         ��Name$ 	LblRemark��5�   >   #��[ 6   $	��Top=�6S   $	��220��6k   $	��130��6w   $��5,2,2,2q�6�   {�.   �� TextWrapping$
 Wrap=�6�   5�      5�      5�      5�      