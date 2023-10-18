import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime SelectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
          Text("Add New Task",
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        )
        Form(
        child: Column(
        key: formKey,
        children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
    validator: (Text) {
    if (Text== null || text.iaEmpaty) {
    return 'please enter task description';
    },
    return null;

    };
    decoration: const InputDecoration(
    hintText: 'Enter Task Title'
    ),
    ),
    ),
    InkWell(
    onTap: () {
    showCalendar();
    },
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
    validator: (Text) {
    if (Text== null || text.iaEmpaty) {
    return 'please enter task title';
    },
    return null;

    };
    decoration: const InputDecoration(
    hintText: 'Enter Task Decoration',
    ),
    maxLines: 4,
    style: Theme.of(context).textTheme.titleSmall,
    ),
    ),
    ),
    ElevatedButton(onPressed: (){
    addTask();
    },
    child: Text('Add',
    style: Theme.of(context).textTheme.titleLarge,
    ),
    ),
    const Text('Select Date'),
    const Text('${SelectedDate.day} ${SelectedDate.month}${SelectedDate.year}'),
    textAlign: TextAlign.Center,
    style: Theme.of(context).textTheme.titleSmall,
    ],
    )),
    ]
    ,
    )
    ,
    );
  }

  void showCalendar() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(duration(days: 365,))
    );
    if (chosenDate != null) {
      SelectedDate = chosenDate;
      setState(() {

      });
    }
  }

  void addTask() {
    if (formKey.currentState.validate() == true) {

    }
  }
}
