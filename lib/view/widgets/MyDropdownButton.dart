import 'package:flutter/material.dart';
import 'package:to_where_provider/Controller/Constants/my_colors.dart';

class MyDropdownButton extends StatefulWidget {
  late String lable;
  late List<String> items;
  late String selected_Item;
  MyDropdownButton(this.lable,this.items,this.selected_Item);

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            widget.lable,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 15,left: 15),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(12),
              color: almost_white
          ),
          child:Directionality(
            textDirection: TextDirection.rtl,
            child:  Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: DropdownButton<String>(
                  elevation: 0,
                  underline: Container(),
                  value: widget.selected_Item,
                  icon: Container(),
                  items: widget.items.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? selectedItem) {
                    setState(() {
                      widget.selected_Item = selectedItem!;
                    });
                  },

                )),
                Icon(Icons.arrow_drop_down, color: Colors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}