   M S B A M L   `   `   `  ���� L  HFlightStatusEntry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FlightStatusEntryFlightStatusEntry  "    FlightStatusEntry.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     e aTelerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7?telerik1http://schemas.telerik.com/2008/xaml/presentation  +localclr-namespace:FlightStatusEntry  -     � Title$  Entry Flight Status��$	��676��$	��802�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�.��� .+��� -   $��lblFlightStatus��$��Entry Flight Status��$��48��$
��Left=�$��
276,13,0,0q�$	��Top=�$��26(�$
��Bold"����	#FF27BFD8$��Center=�$��Center=��� -   $��label1��$��No. Reg Plane��$��28��$
��Left=�$��
11,119,0,0q�$	��Top=��� -   $��label2��$��Plane��$��28��$
��Left=�$��
10,182,0,0q�$	��Top=��� -   $��label3��$
��Base��$��28��$
��Left=�$��
10,213,0,0q�$	��Top=��� -   $��label5��$��Status��$��28��$
��Left=�$��
10,292,0,0q�$	��Top=��� -   $��label6��$
��Name��$
��Left=�$��11,150,0,461q�$��51���� -   $��label7��$��Remark��$��28��$
��Left=�$��451,324,0,0q�$	��Top=��� -	   $��	txtRemark��$��90��$
��Left=�$��507,326,0,0q�$	��Top=�$	��238�� �� TextWrapping$
 Wrap=��� -
   $��BtnExit��$
��Exit��$��23��$
��Left=�$��693,583,0,0q�$	��Top=�$��75���� -   $��label9��$��	Component��$��28��$��12,360,689,0q�$	��Top=��� -   $��TxtName��$��23��$
��Left=�$��123,150,0,0q�$	��Top=�$	��211��{�.  �� 
IsReadOnly .  �� -   $��TxtPlane��$��23��$
��Left=�$��123,184,0,0q�$	��Top=�$	��211�� . 
�������{�. ���	#FF100101���	#FFD84545�� -   $��CmbRegPlane��$��23��$
��Left=�$��123,119,0,0q�$	��Top=�$	��211���� -   $��
CmbAirBase��$��23��$
��Left=�$��123,218,0,0q�$	��Top=�$	��211���� -   $��CmbMaintenance��$��23��$
��Left=�$��123,326,0,0q�$	��Top=�$	��211���� -   $��txtItems��$��23��$
��Left=�$��125,360,0,0q�$	��Top=�$	��211���� -   $��BtnAdd��$	��Add��$��23��$��Right=�$��0,391,367,0q�$	��Top=�$��56���� -   $��LstItems��$	��137��$
��Left=�$��123,436,0,0q�$	��Top=�$	��211�� �� SelectionMode$ Extended=��� -   $��	BtnDltLst��$��Delete��$��23��$��Right=�$��0,436,349,0q�$	��Top=�$��74���� -   $��BtnDltLstAll��$��
Delete All��$��23��$��Right=�$��0,477,349,0q�$	��Top=�$��74���� -   $��label8��$��Maintenance��$��28��$
��Left=�$��
11,326,0,0q�$	��Top=��� -   $��BtnSave��$
��SAVE��$��79��$
��Left=�$��630,468,0,0q�$	��Top=�$	��127��$��36(����	#FF2098E2
��������� -   $��label10��$��Search No Regis :��$��28��$
��Left=�$��	10,87,0,0q�$	��Top=��� -   $��	TxtSearch��$��23��$
��Left=�$��
123,87,0,0q�$	��Top=�$	��211�����	#FF6CC7FF
��������� -   $��label11��$��	Coordinat��$��28��$
��Left=�$��	9,257,0,0q�$	��Top=��� -   $��Txtlatitude��$��23��$
��Left=�{�.  .  $��155,257,0,0q�$	��Top=�$	��131���� -   $��label12��$	��Lat��$��28��$
��Left=�$��123,257,0,0q�$	��Top=��� -   $��TxtLongitude��$��23��$
��Left=�{�.  .  $��340,257,0,0q�$	��Top=�$	��131���� -   $��label13��$
��Long��$��28��$
��Left=�$��299,257,0,0q�$	��Top=�	� -   $��rdGood��$
��Good��$��26��$
��Left=�$��123,294,0,0q�$	��Top=����	#FF21FF21	� -    $��rdMiddle�����	#FFFFFF21$��Middle Risk��$��26��$
��Left=�$��199,294,0,0q�$	��Top=�	� -!   $��rdHigh�����	#FFFF3121$��	High Risk��$��26��$
��Left=�$��311,294,0,0q�$	��Top=�(  "System.Windows.Controls.DatePicker  -"   $��	dtDueDate��$��38��$
��Left=�$��125,392,0,0q�$	��Top=�$	��209���� -#   $��label4��$��Time Since New��$��28��$
��Left=�$��
377,85,0,0q�$	��Top=��� -$   $��label14��$��Cycle Since New��$��28��$
��Left=�$��377,121,0,0q�$	��Top=��� -%   $��label15��$ ��Manufactured Serial Number��$��28��$
��Left=�$��377,155,0,0q�$	��Top=��� -&   $��txtSerialNumber��$��23��$
��Left=�{�.  .  $��546,155,0,0q�$	��Top=�$	��211���� -'   $��btnSaveMaintenance��$��Save Maintenance��$��23��$��Right=�$��0,521,297,0q�$	��Top=�$	��126���� -(   $��label16��$��Due Date��$��28��$��12,392,689,0q�$	��Top=��� -)   $��dTCycleSinceNew��$��23��$
��Left=�{�.  .  $��546,121,0,0q�$	��Top=�$	��211���� -*   $��dTTimeSinceNew��$��23��$
��Left=�{�.  .  $��
546,89,0,0q�$	��Top=�$	��211��