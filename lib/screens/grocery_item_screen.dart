
import 'dart:math';

import 'package:app_skill_harvest/components/grocery_tile.dart';
import 'package:app_skill_harvest/models/grocery_item.dart';
import 'package:app_skill_harvest/models/grocery_manager.dart';
import 'package:app_skill_harvest/screens/grocery_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function(GroceryItem)? onCreate;
  final Function(GroceryItem)? onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;
  

  const GroceryItemScreen({super.key,
   this.onCreate,
   this.onUpdate,
   this.originalItem,
   
   
  }): isUpdating = originalItem != null,
      super();



  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  //add groceryitem screen state property
  final _nameController = TextEditingController();
  String _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  int _currentSliderValue = 0;

  @override
  void initState(){
    // if(widget.originalItem !=null){
    //   _nameController.text = widget.originalItem?.name?? '';
    //   _name = widget.originalItem?.name ?? '';
    //   _currentSliderValue = widget.originalItem?.quantity ?? 0;
    //   _importance = widget.originalItem?.importance?? Importance.low;
    //   color = widget.originalItem?.color?? const Color.fromARGB(255, 92, 22, 17);
    //   final date = widget.originalItem?.date ?? DateTime.now();
    //   _timeOfDay = TimeOfDay(hour: date.hour, minute: date.minute);
    //   _dueDate = date;
    // }

     _nameController.addListener(() {
      setState(() {
       _name = _nameController.text;
            });
        });
        super.initState();
}



@override
void dispose() {
 _nameController.dispose();
super.dispose();
}


  @override
  Widget build(BuildContext context) {
    //       final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
 
    //todo 12
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            // todo 24 add call back handler
            // 1
            final groceryItem = GroceryItem(
            id: widget.originalItem?.id ?? const Uuid().v1(),
             name: _nameController.text,
             importance: _importance,
            color: _currentColor,
            quantity: _currentSliderValue,
            date: DateTime(_dueDate.year, _dueDate.month,
            _dueDate.day, _timeOfDay.hour, _timeOfDay.minute,),);

       if (widget.isUpdating) {
      widget.onUpdate!(groceryItem);
        } else {
      widget.onCreate!(groceryItem);
        }

        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => const GroceryListScreen()));
          }, 
          icon: const Icon(Icons.check)),
        ],
        elevation: 0.0,
        title:Text('Grocery Item',
        style: GoogleFonts.lato(fontWeight: FontWeight.w600),),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            
            const SizedBox(height: 10.0,),

             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
    children: [

        Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('ItemName',style: GoogleFonts.lato(fontSize: 28.0),),
      TextField(
        maxLength: 24,
        controller: _nameController,
        cursorColor: _currentColor,
        decoration: InputDecoration(
          hintText: 'E.g Apples,Banana, 1 Bag of salt',
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _currentColor),),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: _currentColor),
          )
        ),
      )
    ],
  ),

    //importance
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Importance', style: GoogleFonts.lato(fontSize: 28.0),),
      Wrap(
        spacing: 10.0,
        children: [
          ChoiceChip(
            backgroundColor: const Color.fromARGB(255, 181, 179, 179),
            selectedColor: Colors.black,
            selected: _importance == Importance.low,
            label: const Text('low',
          style:TextStyle(color: Colors.white)), 

          onSelected: (selected){
           setState((){
            
             _importance = Importance.low;
            
           });
          },
          ),

           ChoiceChip(
            backgroundColor: const Color.fromARGB(255, 181, 179, 179),
            selectedColor: Colors.black,
            selected: _importance == Importance.medium,
            label: const Text('medium',
          style:TextStyle(color: Colors.white)), 
          
          onSelected: (bool selected){
          //  setState(()=> _importance = Importance.medium);
            setState((){
         
             _importance = Importance.medium;
           });
          },
          ),

           ChoiceChip(
            backgroundColor: Colors.grey,
           selectedColor: Colors.black,
            selected: _importance == Importance.high,
            label: const Text('high',
          style:TextStyle(color: Colors.white)), 
          
          onSelected: (selected){
            setState(()=> _importance = Importance.high);
          },
          ),
         
        ],
      ),
      
    ]
  ),

     //date picker 

Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Date', style: GoogleFonts.lato(fontSize: 28.0),),
          TextButton(
            onPressed: () async{
              final currentDate = DateTime.now();

              final selectedDate = await showDatePicker(
                context: context, 
                initialDate: currentDate,
                firstDate: currentDate, 
                lastDate: DateTime(currentDate.year + 5),
                );

                   setState((){
         
             if(selectedDate != null){
              _dueDate = selectedDate;
             }
           });
          }, 
          child: const Text('Select')),

        ],),
        
          Text(DateFormat('yyy-MMM-ddd').format(_dueDate)),
          
    ],
  ),


      Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Time Of Day', style: GoogleFonts.lato(fontSize: 28.0),),
          TextButton(
            onPressed: () async{
              final timeOfDay = await showTimePicker(
                context: context, 
                initialTime: TimeOfDay.now(),
                );
                   setState((){
         
             if(timeOfDay != null){
              _timeOfDay= timeOfDay;
             }
           });
          }, 
          child: const Text('Select')),

        ],),
        
          if(_timeOfDay !=null)
            Text('${_timeOfDay.format(context)}'),
          
    ],
  ),

      const SizedBox(height: 10.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(height: 50.0, width: 10.0, color: _currentColor),
               const SizedBox(width:8.0),
          Text('Color', style: GoogleFonts.lato(fontSize:28.0),),
            ],
          ),
         TextButton(
          child: const Text('Select'),
          onPressed: (){
            showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  content:BlockPicker(
                    pickerColor: Colors.white,
                    
                    onColorChanged:(newColor){
                      setState(()=>_currentColor= newColor);
                      
                    },
                  ),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: const Text('save'),)
                ],
                );
              }
            );
          },
         )
      
        ]
      ),

        const SizedBox(height: 10.0,),
      Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
            Text('Quantity',style: GoogleFonts.lato(fontSize: 28.0),),
          const SizedBox(width: 16.0,),
          Text(_currentSliderValue.toInt().toString(),
          style: GoogleFonts.lato(fontSize: 18.0),),
        ],),
      Slider(
        inactiveColor: _currentColor.withOpacity(0.5),
        activeColor: _currentColor,
        value: _currentSliderValue.toDouble(),
        min: 0.0,
        max: 100.0,
        label: _currentSliderValue.toInt().toString(),
        onChanged: (double value) {
          setState((){
            _currentSliderValue = value.toInt();
          });
        }),
    ],
  ),
      GroceryTile(
              item: GroceryItem(
                name: _name,
                importance: _importance,
                color: _currentColor,
                quantity: _currentSliderValue,
                date: DateTime(_dueDate.year, _dueDate.month, _dueDate.day,
                      _timeOfDay.hour,_timeOfDay.minute),
              ),
      )
    ],
  ),
          ]
        )
      )
    );
  }
  }

