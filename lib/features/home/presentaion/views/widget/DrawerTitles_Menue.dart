import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class DrawerTitles_Menue extends StatefulWidget {
  const DrawerTitles_Menue({super.key, required this.tittle});

  final String tittle;

  @override
  State<DrawerTitles_Menue> createState() => _DrawerTitles_MenueState();
}

class _DrawerTitles_MenueState extends State<DrawerTitles_Menue> {
  List<String> items = ["سياسة","سياسة محلية", "سياسه دولية"];
  String selectitem = "سياسة";
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),


          ),



        ),
        isExpanded: true,
        icon: Icon(Icons.arrow_drop_down),


        value: selectitem,

        elevation: 30,
        items: items
            .map(
              (item) => DropdownMenuItem(
                alignment: Alignment.centerRight,
            child: Text(item,style: Styles.textStyle18,textAlign: TextAlign.right,),
            value: item,
          ),
        )
            .toList(),
        onChanged: (item) {
          setState(() {
            selectitem=item!;
          });


        },
      ),
    );
  }
}
