   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089k gTelerik.Windows.Controls.Input, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u qTelerik.Windows.Controls.EntityFramework, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j fTelerik.Windows.Controls.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w	 sTelerik.Windows.Controls.DataVisualization, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e
 aTelerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Chart, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7;  
 5Telerik.Windows.Controls.BooleanToVisibilityConverter    BooleanToVisibilityConverterE  ?Telerik.Windows.Controls.GridView.GridViewGroupFooterIndentCell  �� 
TargetType & "GridViewGroupFooterIndentCellStyle �� BasedOn �� Property �� Value " GridViewGroupFooterRowTemplate �� 
TargetType>  8Telerik.Windows.Controls.GridView.GridViewGroupFooterRow ��Name �� Padding>  8Telerik.Windows.Controls.GridView.SelectiveScrollingGrid � ColumnDefinitions:  4Telerik.Windows.Controls.GridView.DataCellsPresenter  Name	   SelectiveScrollingClip)  #Telerik.Windows.Controls.RadRowItem
   RowIndicatorVisibility$   SelectiveScrollingOrientation8 
 2Telerik.Windows.Controls.Windows8ResourceExtension� 
 �Telerik.Windows.Controls.ThemeResourceExtension`1[[Telerik.Windows.Controls.Windows8ResourceKey, Telerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7]]   ResourceKey? 
 9Telerik.Windows.Controls.Windows8ResourceKeyTypeConverter7	  1Telerik.Windows.Controls.GridView.IndentPresenter 	 Name7
  1Telerik.Windows.Controls.GridView.GridViewRowItem 
  IndentLevel 	  IndentLevel - )GridViewGroupFooterIndentCellDataTemplate �� RelativeSource �� 	Converter  GridViewGroupFooterRowStyle % !GridViewGroupToggleButtonTemplate " GridViewGroupToggleButtonStyle  GroupHeaderTemplate  GroupHeaderRowTemplate6  0Telerik.Windows.Controls.GridView.GroupHeaderRow �Name � RowDefinitions ��Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName �� TargetProperty R� KeyTime R� Value9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value<  6Telerik.Windows.Controls.GridView.AggregateResultsList   AggregateResultsC  =Telerik.Windows.Controls.GridView.GridViewAggregateResultCell   AggregateResult  �� Orientation! F�Name" �� Stretch# J� RenderTransformOrigin$ d�Name% J� Opacity& d� 	IsChecked' �� Mode #	 GroupHeaderRowToggleButtonStyle(   GroupViewModel)   GroupHeaderTemplate*   RowIndicatorVisibility+   Level,  Name- J� IsHitTestVisible 
 GridViewGroupRowStyle  GroupHeaderRowStyle   GridViewGroupFooterCellStyle?  9Telerik.Windows.Controls.GridView.GridViewGroupFooterCell ( $GridViewHeaderIndentCellDataTemplate@  :Telerik.Windows.Controls.GridView.GridViewHeaderIndentCell  GridViewHeaderRowTemplate9  3Telerik.Windows.Controls.GridView.GridViewHeaderRow=  7Telerik.Windows.Controls.GridView.CommonHeaderPresenter.  Name/ �� ElementName:  4Telerik.Windows.Controls.GridView.GridViewHeaderCell   GridViewHeaderCellStyleStyle�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     Mtelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
   1System&clr-namespace:System;assembly=mscorlib  %,  &	        '       7  &	 /     7  7   &	 �    7  &	 �    &	 �    7  &	 Q    &	 �    7   7 	 7  7   &	
 N    7  7  7  &	 �    &	 �    7  &	 �    &	     7  7   '  F    &	 �    '  �    7     �� "   8   .���  � ��
 ���� �� "  .R��� $ PART_FooterRowBorder��#��z��#��z��#��z��# z��#��z��#��z��._�   �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+�  $ PART_DataCellsPresenter��	 . $��3���� $ PART_IndicatorPresenter��$��25��$��Stretch=�$��0��#y�z
 $ Vertical=�$��3��
������ $��0,0,1,0q���  $ 
BasicBrush 	  $ PART_IndentPresenter��# z 8��  $��1��$��0,0,0,0q�$ Vertical=���Z� �� $ PART_HierarchyIndent��$��25��$��2��$��0,0,0,0q�$ Vertical=���Z� y��� *HasHierarchy+ �� *TemplatedParent+8  �� "   .���  � ��8   ��  � ��
 ���� ��  � ��   $ 
BasicBrush ��  � ��   $ StrongBrush ��  � ��   $ FontFamilyStrong ��  � ��$
 Bold"���  � ��$ 0,0,0,0q���  � ��$ 16����  � ��$ Stretch=���  � ��$ Stretch=��� " d�.R��� #��z��#��z��#��z��._��� �� "  d�.���  � ��8   ��  � ��$
 Left=���  � ��$ Center=���  � ��$ 9,0,0,0q��� .R��� $��6,0,0,0q�$
��Bold"���  $ AccentBrush ���� *Header+�� "  .R�� $ PART_GroupExpanderGrid�� �� $
��Auto ��� $
��Auto ��� $��* � �� $ PART_HeaderRow��#��z���� $ PART_HeaderAggregatesRow��$
��Auto �   ExpandStateGroup��.   Expanded��. �� .��T� $ IconOuterBorder��$ BorderThickness�..�i� $ 00:00:00�� u�0q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�$ ExpanderButton��.\�  $ 0:0:0��$	 180Q�  	Collapsed��.+��� $��0,1,0,0q�$��2��	 . $��2��$	��Top=�$��0,-1,0,0q���  $ 
BasicBrush �� $ ToggleButtonBorder��#��z��$��-1,0,0,0q�$��2��$��2��#��z��	 . ._��  �� $��25 ��� $
��Auto ��� $��* �.+��� 	 . #��z��#��z��$��2��y��� *ShowHeaderAggregates+ �� *TemplatedParent+8   ._�  #��z #��z��#��z������ .R�   �� ���� .R��� $  
Horizontal=��� $ IconOuterBorder��$��0,0,0,1q�
������ $��Stretch=�$ Vertical=���  $ 
BasicBrush ._�F� $! ExpanderButton��$��6��$��4��$
" Fill=�"����        р�[     ���-  	= 	$# 0.5,0.5&���  $ StrongBrush z�V� .~��� �� �� T� d� $$ HeaderButton��$��3��#��z��$ Vertical=�$% 0Q�#��z��& �� *
IsExpanded+ �� *TemplatedParent+$' TwoWay=�d� $��1��$ Vertical=�
������ $��0q�8�� #��z��#��z����Z� & �� *
IsExpanded+ �� *TemplatedParent+$' TwoWay=�.���� $��1��$��0,4,10,5q�#��z( $��Center=�#��z) �� 	 . $��0,0,0,1q�$��1��$��2����  $ 
BasicBrush �� $ PART_IndicatorPresenter��$��25��$��Stretch=�#y�z* $ Vertical=�$��0,0,1,0q���  $ 	MainBrush ��  $ 
BasicBrush 	  $ Vertical=�# z+ #��z��$��1��  $", FooterRowForHeaderAggregates��
������ $��	0,-28,0,0q�- .  $��1��8�� $��0��$��5��y��� *!ShowGroupHeaderColumnAggregates+ �� *TemplatedParent+8  �� "   8   .���  � ��8  ��  �@ GroupHeaderTemplate8  �� ' �@ ShowGroupHeaderColumnAggregates . ��  �@ ShowHeaderAggregates .  ��  � ��   $ 	MainBrush ��  �@J�	AllowDrop . ��  � ��$ Center=���  � ��$
 Left=���  � ��$ 25���� .R�  �� "   8   .���  � ��$ Normal"���  � ��$ Right=���  � ��$ Center=��� .R�  
������ $��0q��� "  .R�   �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $
��Auto ��� .+�  $ . PART_CommonHeaderPresenter��$��3���� $ CommonHeaderIndent��$ Vertical=�$��2��
�������$��0,0,-1,0q�y��� *
Visibility+$ / PART_CommonHeaderPresenter���� $" PART_GridViewHeaderRowBorder��#��z��#��z��#��z��#��z��# z��$��1��$��4��#��z��  $ PART_DataCellsPresenter��$��3��$��1���� $ PART_IndicatorPresenter��$��25��#y�z
 ���	#FFD6D4D4$��0,0,0,1q�$ Vertical=�$��0,0,-1,0q�$��1��	  $ PART_IndentPresenter��$��1��#��z��# z $��1��$��0,0,-1,0q�8��  $ Vertical=��� $# PART_HierarchyIndentPresenter��$��2��$��25��
������ $��0,0,1,0q�$��1��$ Vertical=�y��� *HasHierarchy+ �� *TemplatedParent+8  �� "   .���  � �� �	#FFD6D4D4��  � ��$ 
0, 0, 0, 1q��� "   .���  � �� �	#FFD6D4D4��  � ��$ 
0, 0, 0, 1q���  � ��$ Right=��� "   .���  � �� �	#FFD6D4D4��  � ��$ 
0, 0, 0, 1q���  � ��8   