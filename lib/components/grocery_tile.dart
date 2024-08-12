import 'package:app_skill_harvest/models/grocery_item.dart';
import 'package:app_skill_harvest/screens/grocery_item_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class GroceryTile extends StatefulWidget {
  final GroceryItem? item;
  //final Color color;
 final Function(bool)? onComplete;
   final TextDecoration textDecoration;
   GroceryTile( {super.key,
   this.item,
  //required this.color,
  this.onComplete,
   }):
   textDecoration =(item?.isComplete ?? false) ? TextDecoration.lineThrough : TextDecoration.none;
    
  @override
  State<GroceryTile> createState() => _GroceryTileState();
}


class _GroceryTileState extends State<GroceryTile> {
    bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
     
    return SizedBox(width: double.infinity,
          height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Row(
                  children: [
                    Container(width: 10.0,
                    height: 100.0,
                   color: widget.item!.color, 
                  ),
                    
                    const SizedBox(width: 16.0,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       // item !=null ?
                        Text(widget.item!.name?? '',
                          style: GoogleFonts.lato(
                              fontSize:21.0,
                              decoration: _isChecked ?
                          TextDecoration.lineThrough : TextDecoration.none,
                              //decoration: widget.textDecoration,
                              fontWeight: FontWeight.bold),),
                      const SizedBox(height: 4.0,),
                        buildDate(widget.item),
                      const SizedBox(height: 4.0,),
                     
                        buildImportance(widget.item),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                      Text(widget.item!.quantity.toString(),
                      style: GoogleFonts.lato(
                        decoration: _isChecked ?
                          TextDecoration.lineThrough : TextDecoration.none,
                        fontSize: 21.0,
                      ),),
                    
                  SizedBox(
                  
                    child: Row(
                      children: [
                        IconButton(
                          iconSize: 35,
                          onPressed: (){
                              setState(() {
                                _isChecked =!_isChecked;
                              });
                              widget.onComplete?.call(!_isChecked);
                        }, icon: _isChecked ? Icon(Icons.check_box,color: widget.item!.color,)
                        : Icon(Icons.check_box_outline_blank_outlined, color: widget.item!.color,)
                        ),
                     
                    ],),
                  ),
                  ],
                )
        ],),
    );
  }
}

Widget buildImportance(GroceryItem? item) {
    
   TextDecoration? textDecoration;
   
  
   if(item !=null){
    if (item.importance == Importance.low) {
          return Text(
                  'Low',
                   style: GoogleFonts.lato(decoration: textDecoration));
         } else if (item.importance == Importance.medium) {
            return Text(
                    'Medium',
                     style: GoogleFonts.lato(fontWeight: FontWeight.w800,
                     decoration: textDecoration));
         } else if (item.importance == Importance.high) {
            return Text(
                    'High',
                     style: GoogleFonts.lato(
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                          decoration: textDecoration,),);
        } else {
            throw Exception('This importance type does not exist');
      }
   } 
   throw Exception('Item does not Exist');
}

Widget buildDate(GroceryItem? item) {
  
    TextDecoration? textDecoration;
    
    final dateString =item?.date !=null? DateFormat('MMMM dd h:mm a').format(item!.date!): '';
      return Text(
                  dateString,
                  style: TextStyle(
                     decoration: textDecoration),);
      }
      //final dateString =item?.date !=null? DateFormat.MMMd().format(DateTime.now()): '';

