import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/widgets/custom_noteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colorArray = const [
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
    Color(0xffFFCD7B),
    Color(0xff77D6EF),
    Color(0xffD89CE2),
    Color(0xff34BDB0),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, "EditNotesView");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const EditNotesView();
                },
              ),
            );
          },
          child: NotesItem(
            color: colorArray[index],
          ),
        ),
      ),
    );
  }
}
