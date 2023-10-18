import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/my_theme.dart';

class Task_Widget extends StatelessWidget {
  const Task_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {

            },
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            backgroundColor: MyTheme.redColor,
            foregroundColor: MyTheme.whiteColor,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: const doNothing,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
          SlidableAction(
            onPressed: const doNothing,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Save',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: ListTile(title: Text('Slide me')),
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyTheme.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Theme
                  .of(context)
                  .primaryColor,
              height: 80,
              width: 4,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Title Task',
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                            color: Theme
                                .of(context)
                                .primaryColor,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Des',
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleSmall),
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
              child: Icon(Icons.check, size: 30, color: MyTheme.whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
