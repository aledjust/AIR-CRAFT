   M S B A M L   `   `   `  ���� k  gTelerik.Windows.Controls.Chart, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7kNclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.ChartTelerik.Windows.Controls  Xclr-namespace:Telerik.Windows.Controls.ChartView;assembly=Telerik.Windows.Controls.Chart"Telerik.Windows.Controls.ChartView  C ?AirCraft, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:AirCraftAirCraft O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem    AirCraft.Monitoring   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     k gTelerik.Windows.Controls.Input, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u	 qTelerik.Windows.Controls.EntityFramework, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j
 fTelerik.Windows.Controls.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Mtelerik1http://schemas.telerik.com/2008/xaml/presentation   	 
      hchartNclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.Chart   	 
      v	chartViewXclr-namespace:Telerik.Windows.Controls.ChartView;assembly=Telerik.Windows.Controls.Chart   	 
      0localclr-namespace:AirCraft   	 
      ASystem&clr-namespace:System;assembly=mscorlib   	 
        � DataContext  "  AirCraft.MonitoringViewModel   � 	Resources    H1 �� 
TargetType �� Property �� Value  
ValueTextT  
ValueTextD  
ValueTextS  	H1Wrapper  CustomButton  StrongBrush �� 
TargetType ��Name ��Name��%~  &	        &	 _     &	 �     &	 K    &	 �    &	 &    7  �� " ��.���  � ��$ Segoe UI Light)���  � ��$ 15(���  � ��$ Center=��� " ��.���  � ��$ Calibri)���  � ��$ 
ExtraBlack"���  � ��$ 12(���  � ��$ Center=��� " ��.���  � ��$ Calibri)���  � ��$ 
ExtraBlack"���  � ��$ 12(���  � ��$ Center=��� " ��.���  � ��$ Calibri)���  � ��$ 
ExtraBlack"���  � ��$ 12(���  � ��$ Center=��� " ��.���  � �� �	#FFE2E6E7��  � ��$ 0,0,0,5q���  �@��Padding$	 5,3q��� " ��.���  � ��
 �������  � �� �	#FF000000��  � ��$ 3q���  � ��$ 1,1,0,1q���  � ��8   ��  � �� �� " ��.R�� .+��� $ 
Background��#��z��#��z��#��z��._��� $ contentPresenter��#��z��#��z��#��z��#��z��#��z��.��� -    �Name$ 
LayoutRoot��	 � RowDefinitions	 �� $
��0.6* ��� $
��0.4* �.+�%  Telerik.Windows.Controls.RadMap  -   $��radMap��$��0�����	#FFD6D4D7$��1q�
   UseDefaultLayout
 .     UseSpringAnimations .    MouseClickMode$
 None=�   	ZoomLevel$ 5��   Center4  .Telerik.Windows.Controls.Map.LocationConverter$ -2.587403,117.5304285    	Providers 9  3Telerik.Windows.Controls.Map.BingMapTrafficProvider     PlaneRegisTemplate ��Name J� OpacityMask+  %Telerik.Windows.Controls.Map.MapLayer   Location ^� ToolTip��%�   &	       �� .R��� $ 
planeImage��-   $��30��$��30��$
��Fill=� �	#FFE66767���� *
ImgPlane+ �� *Center+ �� .+��� ���� *	RegisName+.@�5  /Telerik.Windows.Controls.Map.VisualizationLayer     ItemTemplate# [    ItemsSource �� *
PlaneRegis+� $��1�� � ColumnDefinitions �� $
��Auto ��� $��15 ��� $��3* �.+�� $��0��$��0��	 �� $
��Auto ��� $��15 ��� $
��2.5* �.+�� $��0��$��0�� ��%O   '��       �� " ��.���  � ��$ Segoe UI Light)���  � ��$ 15(�	 �� $
��Auto ��� $��* �.+��� $��0��$��0��$��0,5,0,0q�#��[ ._��  �� $��* ��� $
��Auto �.+�� $��0��$��0��.+��� #��[  $!��Air Craft Monitoring System��� $��0��$��1��.+��� -    ��Name$ 
BtnRefresh��.���� �� .�	REFRESH� $��1��$��5,0,0,10q�$��Center=� �� $��2* ��� $
��0.8* ��� $��2* ��� $
��0.8* ��� $��2* �.+���  �� Orientation$ Vertical=�.+��� $
��Good���� -    ��Name$ TotalFlightGood��
��� � �$��30(��� $��2��$ Vertical=�.+��� $��Middle Risk���� -   $ TotalFlightMiddleRisk��
��� ���$��30(��� $��4��$ Vertical=�.+��� $��	High Risk���� -   $ TotalFlightHighRisk��
���  ��$��30(�� $��2��$��0��	 �� $
��Auto ��� $��5 ��� $��2* �.+�� $��0��$��0��	 �� $
��Auto ��� $��* � �� $��* ��� $
��Auto ��� $
��Auto �.+�� $��0��$��0��.+��� #��[ ._��� #��[  $��Flight information��� $��0��$��1��.+��� #��[ ._��� #��[  $��Search No Regis :��� $��0��$��2��.+��� #��[ ._��� -   $��TxtSearchFlight��$��26��$
��Left=�$	��Top=�$	��156��� $��2��$��0��	 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $	��150 ��� $
��Auto ��� $
��Auto �.+�� $��0��$��0��.+��� #��[ ._��� #��[ $
��Name��� $��1��$��0��.+��� #��[ ._��� #��[ $��Plane��� $��2��$��0��.+��� #��[ ._��� #��[ $
��Base��� $��3��$��0��.+��� #��[ ._��� #��[ $��No. Reg Plane��� $��4��$��0��.+��� #��[ ._��� #��[ $��Status��� $��0��$��1��.+��� -	   $ LblName��#��[ $��5,2,2,2q�� $��1��$��1��.+��� -
   $ LblPlane��#��[ $��5,2,2,2q�� $��2��$��1��.+��� -   $ LblBase��#��[ $��5,2,2,2q�� $��3��$��1��.+��� -   $ LblRegisName��#��[ $��5,2,2,2q�� $��4��$��1��.+��� -   $ 	LblStatus��#��[ $��5,2,2,2q�� $��0��$��2��.+��� #��[ ._��� #��[ $��Time Since New��� $��1��$��2��.+��� #��[ ._��� #��[ $��Cycle Since New��� $��2��$��2��.+��� #��[ ._��� #��[ $ ��Manufactured Serial Number��� $��3��$��2��.+��� #��[ ._��� #��[ $��Remark��� $��0��$��3��.+��� -   $ LblSinceNew��#��[ $��5,2,2,2q�� $��1��$��3��.+��� -   $ LblCycleSinceNew��#��[ $��5,2,2,2q�� $��2��$��3��.+��� -   $ LblSN��#��[ $��5,2,2,2q�� $��3��$��3��$��2��.+��� -    ��Name$ 	LblRemark��#��[ $	��Top=�$	��220��$��50��$��5,2,2,2q�{�.   �� TextWrapping$
 Wrap=�� $��0��$��2��.+�*  $Telerik.Windows.Controls.RadGridView  -     Name$ gridView��$��5,5,0,5q�;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoExpandGroups .     AutoGenerateColumns .     
IsReadOnly .     IsFilteringAllowed  . !   RowIndicatorVisibility$! 	Collapsed=�"   ShowGroupPanel" .  #   EnableRowVirtualization# .  !$   EnableColumnVirtualization$ .  $��Disabled=�  GridViewGroupRowStyle%   GroupRowStyle#% [ 8	  2Telerik.Windows.Controls.GridView.BaseItemsControl& 	  GroupRenderMode$
& Flat=�'   FilteringMode$' 	FilterRow=�(   CanUserFreezeColumns( .  $	��Top=�$��1,1,1,0q�)   Columns) 1
  +Telerik.Windows.Controls.GridViewDataColumn
  6  0Telerik.Windows.Controls.GridViewBoundColumnBase*   Header$* Maintenance��-  'Telerik.Windows.Controls.GridViewColumn+   Width?  9Telerik.Windows.Controls.GridView.GridViewLengthConverter$	+ 100 ,   IsResizable, .  -   IsGroupable- .  .   DataMemberBinding. �� *Maintenances+
  $* 	Component��$+ * /   TextAlignment$/ Right=�  	 GridViewGroupFooterCellStyle0   GroupFooterCellStyle#0 [	   
 GridViewHeaderCellStyleStyle1   HeaderCellStyle#1 [
 , .  2   IsFilterable2 . 3   IsReorderable3 .  . �� *
Components+
  $* Due Date��$+ * $/ Right=�#0 [	 #1 [
 , .  3 .  . �� *	DueDate+4   GroupDescriptors4 *  $Telerik.Windows.Data.GroupDescriptor  5   Member$5 Maintenances��