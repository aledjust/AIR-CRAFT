   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089k gTelerik.Windows.Controls.Input, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7u qTelerik.Windows.Controls.EntityFramework, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j fTelerik.Windows.Controls.Data, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w	 sTelerik.Windows.Controls.DataVisualization, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e
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
 GridViewGroupRowStyle  GroupHeaderRowStyle   GridViewGroupFooterCellStyle?  9Telerik.Windows.Controls.GridView.GridViewGroupFooterCell ( $GridViewHeaderIndentCellDataTemplate@  :Telerik.Windows.Controls.GridView.GridViewHeaderIndentCell  GridViewHeaderRowTemplate9  3Telerik.Windows.Controls.GridView.GridViewHeaderRow=  7Telerik.Windows.Controls.GridView.CommonHeaderPresenter.  Name/ �� ElementName:  4Telerik.Windows.Controls.GridView.GridViewHeaderCell   GridViewHeaderCellStyleStyle�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      Mtelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
   5      1System&clr-namespace:System;assembly=mscorlib  5      %�  &	        '       7  &	 b     7  7   &	 q    7  &	 F    &	 �    7  &	 q    &	 �    7   7 	 7  7   &	
 �    7  7  7  &	 �    &	 �    7  &	 t    &	 �    7  7   '  �    &	 e    '      7     5      6+   �� 5      "   6   8   .�5	   
   ��  � ��
 ���� 6'   5
      �� 5      "  6=   .R�5   
   �� $ PART_FooterRowBorder��6   #��z��5      #��z��5      #��z��5      # z��5      #��z��5      #��z��5      ._�5         5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $��* �6'   .+�5        $ PART_DataCellsPresenter��6-   	 . $��3��6�   �� 5      $ PART_IndicatorPresenter��6   $��25��5      $��Stretch=�5      $��0��5      #y�z
 5      $ Vertical=�5       $��3��5!      
������ $��0,0,1,0q�5$      ��5"        $ 
BasicBrush 5$      	  5%      $ PART_IndentPresenter��6*   # z 5&      8��  $��1��5(      $��0,0,0,0q�5)      $ Vertical=�5+      ��5*      Z� 5+      �� 5,      $ PART_HierarchyIndent��6   $��25��5-      $��2��5.      $��0,0,0,0q�5/      $ Vertical=�52      ��50      Z� y�51      �� *HasHierarchy+ �� *TemplatedParent+8  52      53      54      55      �� 56      "   60   .�57   
   ��  � ��8   6%   �� 58   
    � ��
 ���� 6'   �� 59   
    � �� 6(     $ 
BasicBrush �� 5:   
    � �� 6'     $ StrongBrush �� 5;   
    � �� 6'     $ FontFamilyStrong �� 5<   
    � ��$
 Bold"�6'   �� 5=   
    � ��$ 0,0,0,0q�6,   �� 5>   
    � ��$ 16��6&   �� 5?   
    � ��$ Stretch=�65   �� 5@   
    � ��$ Stretch=�67   5A      �� 5C      " d�6@   .R�5D   
   �� #��z��6   #��z��6;   #��z��6g   ._�5E      �� 5F      5G      �� 5I      "  d�63   .�5J   
   ��  � ��8   6%   �� 5K   
    � ��$
 Left=�67   �� 5L   
    � ��$ Center=�65   �� 5M   
    � ��$ 9,0,0,0q�6$   5N      �� 5P      .R�5Q   
   �� $��6,0,0,0q�6Y   $
��Bold"�6j   ��6     $ AccentBrush ��6|   �� *Header+5R      �� 5T      "  65   .R�5U   
   � $ PART_GroupExpanderGrid��6    5V      �� 5W      $
��Auto �6#   �� 5X      $
��Auto �6#   �� 5Y      $��* �6#    5[      �� 5\      $ PART_HeaderRow��6    #��z��68   �� 5]      $ PART_HeaderAggregatesRow��6    $
��Auto �6B    5_        5`      ExpandStateGroup��. 5a        Expanded��. 5b      �� .��5c      T� $ IconOuterBorder��6<   $ BorderThickness�6d   ..�5d   "   i� $ 00:00:00��69    5e   &   u�5f   *   0q�67   5h   #   5i      U� 5j      $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6<   $ ExpanderButton��6�   .\�5k   "     $ 0:0:0��67   $	 180Q�6G   5l      5m      5n        5o      	Collapsed��6"   5p      .+�5r      �� $��0,1,0,0q�5s      $��2��5u      	 . $��2��5w      $	��Top=�5x      $��0,-1,0,0q�5y      ��5t        $ 
BasicBrush 5y      �� 5z      $ ToggleButtonBorder��6   #��z��5{      $��-1,0,0,0q�5|      $��2��5}      $��2��5~      #��z��5      	 . ._�5�      �  5�      �� 5�      $��25 �6+   �� 5�      $
��Auto �6+   �� 5�      $��* �6+   .+�5�      �� 	 . #��z��5�      #��z��5�      $��2��5�      y�5�      �� *ShowHeaderAggregates+ �� *TemplatedParent+8   ._�5�        #��z 67   #��z��6h   #��z��6�   ��5�      �� 5�   "   .R�5�   &      6J   �� 5�   #   ��5�      �� 5�   "   .R�5�   &   �� $  
Horizontal=�61   5�   #   5�      5�      �� 5�      $ IconOuterBorder��6   $��0,0,0,1q�5�      
������ $��Stretch=�5�      $ Vertical=�5�      ��5�        $ 
BasicBrush ._�5�      F� $! ExpanderButton��6   $��6��5�   !   $��4��5�   !   $
" Fill=�5�   !   "����        р�[     ���-  	= 	$# 0.5,0.5&�5�   !   ��5�   !     $ StrongBrush z�5�      V� 5�   "   .~�5�   &   �� �� 5�   &   �� 5�   &   T� 5�   &   5�   #   5�      5�      d� 5�      $$ HeaderButton��6#   $��3��5�      #��z��5�      $ Vertical=�5�      $% 0Q�5�      #��z��5�      & 5�      �� *
IsExpanded+ �� *TemplatedParent+$' TwoWay=�5�      d� 5�      $��1��5�      $ Vertical=�5�      
������ $��0q�5�      8�� #��z��5�      #��z��5�      ��5�      Z� & 5�      �� *
IsExpanded+ �� *TemplatedParent+$' TwoWay=�.��5�      �� $��1��6+   $��0,4,10,5q�6;   #��z( 6M   $��Center=�6x   #��z) 6�   5�      �� 5�      	 . $��0,0,0,1q�5�      $��1��5�      $��2��5�      ��5�        $ 
BasicBrush 5�      5�      5�      �� 5�      $ PART_IndicatorPresenter��6   $��25��5�      $��Stretch=�5�      #y�z* 5�      $ Vertical=�5�      $��0,0,1,0q�5�      ��5�        $ 	MainBrush ��5�        $ 
BasicBrush 5�      	  5�      $ Vertical=�5�      # z+ 5�      #��z��5�      $��1��5�        5�      $", FooterRowForHeaderAggregates��6-   
������ $��	0,-28,0,0q�6l   - .  $��1��5�      8�� $��0��5�      $��5��5�      y�5�      �� *!ShowGroupHeaderColumnAggregates+ �� *TemplatedParent+8  5�      5�      5�      �� 5�      "   6+   8   .�5�   
   ��  � ��8  6%   �� 5�   
    �@ GroupHeaderTemplate8  60   �� 5�   
   ' �@ ShowGroupHeaderColumnAggregates . 6<   �� 5�   
    �@ ShowHeaderAggregates .  61   �� 5�   
    � �� 6'     $ 	MainBrush �� 5�   
    �@J�	AllowDrop . 6&   �� 5�   
    � ��$ Center=�65   �� 5�   
    � ��$
 Left=�67   �� 5�   
    � ��$ 25��6&   5�      �� 5�      .R�5�   
     5�      �� 5�      "   61   8   .�5�   
   ��  � ��$ Normal"�6'   �� 5�   
    � ��$ Right=�60   �� 5�   
    � ��$ Center=�6.   5�      �� 5�      .R�5�   
     
������ $��0q�6E   5�      �� 5�      "  68   .R�5�   
      5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   �� 5      $
��Auto �6#   �� 5     $��* �6#    5     �� 5     $
��Auto �6    �� 5     .+�5       $ . PART_CommonHeaderPresenter��6.   $��3��6R   �� 5     $ CommonHeaderIndent��6   $ Vertical=�5	     $��2��6_   
�������$��0,0,-1,0q�5
  )   y�5  2   �� *
Visibility+$ / PART_CommonHeaderPresenter��5
  )   �� 5     $" PART_GridViewHeaderRowBorder��6   #��z��5     #��z��5     #��z��5     #��z��5     # z��5     $��1��6*   $��4��5     #��z��5     5       5     $ PART_DataCellsPresenter��6)   $��3��5     $��1��6   �� 5     $ PART_IndicatorPresenter��6   $��25��5     #y�z
 5     ���	#FFD6D4D4$��0,0,0,1q�6T   $ Vertical=�5     $��0,0,-1,0q�6N   $��1��6`   	  5     $ PART_IndentPresenter��6&   $��1��6D   #��z��6T   # z 5     $��1��67   $��0,0,-1,0q�6D   8��  $ Vertical=�5!     �� 5#     $# PART_HierarchyIndentPresenter��6   $��2��6<   $��25��5$     
������ $��0,0,1,0q�5&     $��1��6!   $ Vertical=�5(     y�5'     �� *HasHierarchy+ �� *TemplatedParent+8  5(     5*     5+     �� 5-     "   6   .�5.  
   ��  � �� �	#FFD6D4D46(   �� 5/  
    � ��$ 
0, 0, 0, 1q�6,   50     �� 52     "   61   .�53  
   ��  � �� �	#FFD6D4D46(   �� 54  
    � ��$ 
0, 0, 0, 1q�6,   �� 55  
    � ��$ Right=�67   56     �� 58     "   6   .�59  
   ��  � �� �	#FFD6D4D46(   �� 5:  
    � ��$ 
0, 0, 0, 1q�6,   �� 5;  
    � ��8   6%   5<     5>     