import 'package:flutter/material.dart';
import 'package:todo_app/home/settings/settings_tab.dart';
import 'package:todo_app/home/task_list/add_task_bottom_sheet.dart';
import 'package:todo_app/home/task_list/task_list_tab.dart';
import 'package:todo_app/my_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String routeName = 'home_Screen';

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List',
          style: Theme
              .of(context)
              .textTheme
              .titleLarge,),
      )
      bottomNavigationBar:BottomAppBar(
    child: BottomAppBar(
    shape: CircularNotchedRectangle(
      notchMargin: 8,
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {

            });
          }

          items: const [
      BottomNavigationBarItem(
      icon:Icon(Icons.list),
      label: 'list',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'settings'
    )
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton(
    shape: StadiumBorder(
    side: BorderSide(
    color:MyTheme.whiteColor,
    width: 6,
    )
    ),
    onPressed: () {
    showAddTAskBottomSheet();
    },
    child: const Icon(Icons.add,size: 35,),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation
        .
    centerDocked
    ,

    )
    )
    body: tabs[selectedIndex
    ]
    ,
    );

  }

  List<Widget> tabs = [
    TaskListTab(),
    SettingsTab(),
  ];

  void showAddTAskBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => AddTaskBottomSheet()
    );
  }
}
