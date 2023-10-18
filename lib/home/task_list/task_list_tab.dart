import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home/task_list/task_widget.dart';
import 'package:todo_app/my_theme.dart';

class TaskListTab extends StatelessWidget {
  const TaskListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 365)),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: MyTheme.blackColor,
          dayColor: MyTheme.blackColor,
          activeDayColor: MyTheme.whiteColor,
          activeBackgroundDayColor: Theme.of(context).primaryColor,
          dotsColor: MyTheme.whiteColor,
          selectableDayPredicate: (date) => true,
          locale: 'en_ISO',
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const Task_Widget();
            },
            itemCount: 30,
          ),
        )
      ],
    );
  }
}
