   M S B A M L   `   `   `  ���� L  HFlightStatusEntry, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FlightStatusEntryFlightStatusEntry  "    FlightStatusEntry.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     e aTelerik.Windows.Controls, Version=2016.1.217.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7?telerik1http://schemas.telerik.com/2008/xaml/presentation  +localclr-namespace:FlightStatusEntry  -     � Title$  Entry Flight Status��$	��616��$	��802�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�.��� .+��� -   $��lblFlightStatus��$��Entry Flight Status��$��48��$
��Left=�$��
276,13,0,0q�$	��Top=�$��26(�$
��Bold"����	#FF27BFD8$��Center=�$��Center=��� -   $��label1��$��No. Reg Plane��$��28��$
��Left=�$��	11,79,0,0q�$	��Top=��� -   $��label2��$��Plane��$��28��$
��Left=�$��
10,142,0,0q�$	��Top=��� -   $��label3��$
��Base��$��28��$
��Left=�$��
10,173,0,0q�$	��Top=��� -   $��label4��$��Category��$
��Left=�$��10,207,0,344q��� -   $��label5��$��Status��$��28��$
��Left=�$��
10,239,0,0q�$	��Top=��� -   $��label6��$
��Name��$
��Left=�$��11,110,0,441q�$��51���� -	   $��label7��$��Remark��$��28��$
��Left=�$��
391,79,0,0q�$	��Top=��� -
   $��	txtRemark��$��90��$
��Left=�$��
447,81,0,0q�$	��Top=�$	��238�� �� TextWrapping$
 Wrap=��� -   $��BtnExit��$
��Exit��$��23��$
��Left=�$��693,539,0,0q�$	��Top=�$��75���� -   $��label9��$��Items��$��28��$��10,299,731,0q�$	��Top=��� -   $��textBox1��$��23��$
��Left=�$��123,110,0,0q�$	��Top=�$	��211���� -   $��textBox2��$��23��$
��Left=�$��123,144,0,0q�$	��Top=�$	��211���� -   $��	comboBox1��$��23��$
��Left=�$��
123,79,0,0q�$	��Top=�$	��151���� -   $��	comboBox2��$��23��$
��Left=�$��123,178,0,0q�$	��Top=�$	��151���� -   $��	comboBox3��$��23��$
��Left=�$��123,265,0,0q�$	��Top=�$	��151���� -   $��txtItems��$��23��$
��Left=�$��123,299,0,0q�$	��Top=�$	��211���� -   $��BtnAdd��$	��Add��$��23��$��Right=�$��0,299,367,0q�$	��Top=�$��56���� -   $��LstItems��$	��137��$
��Left=�$��123,344,0,0q�$	��Top=�$	��211�� �� SelectionMode$ Extended=��� -   $��	BtnDltLst��$��Delete��$��23��$��Right=�$��0,344,349,0q�$	��Top=�$��74���� -   $��BtnDltLstAll��$��
Delete All��$��23��$��Right=�$��0,385,349,0q�$	��Top=�$��74��