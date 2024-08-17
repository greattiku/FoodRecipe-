import 'package:app_skill_harvest/components/grocery_tile.dart';
import 'package:app_skill_harvest/models/grocery_manager.dart';
import 'package:app_skill_harvest/screens/grocery_item_screen.dart';
import 'package:flutter/material.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager? manager;
  const GroceryListScreen({super.key,
  this.manager,
  });

  @override
  Widget build(BuildContext context) {
    //26 replace with listview
    final groceryItems = manager?.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItems!.length,
        itemBuilder: (context, index){
        final item = groceryItems[index];
        //28wrap a dismissible
        //27wrap an inkwell
        //5
        return Dismissible(
           key: Key(item.id!),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            child: const Icon(Icons.delete_forever,
            color:Colors.white,size:50.0)
          ),
          onDismissed: (direction) {
            manager?.deleteItem(index);
            final snackBar = SnackBar(content: Text('${item.name} dismissed'),
            action: SnackBarAction(
              textColor: Colors.green,
              label: 'Undo', 
            onPressed: (){
                manager?.undoDeleteItem(index, item);
            }),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              (snackBar),
            );
          },
          child: InkWell(
              child:
               GroceryTile(
                key: ValueKey(item.id),
                item: item,
                onComplete: (change){
                  manager?.completeItem(index,change);
                },
              ),
              onTap: (){

              //  Navigator.pushNamed(context, '/Groceryitemscreen',);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> GroceryItemScreen(
                      originalItem: item,
                      onUpdate: (item){
                        manager?.updateItem(item, index);
                        Navigator.pop(context);
                      },
                    ))
                  );
              },
            ),
        );
      }, separatorBuilder: ((context, index) {
        return const SizedBox(height: 16.0,);
      }), ),
    );
  }
}
// return Dismissible(
//           key: Key(item.id!),
//           direction: DismissDirection.endToStart,
//           background: Container(
//             color: Colors.red,
//             alignment: Alignment.centerRight,
//             child: const Icon(Icons.delete_forever,
//             color:Colors.white,size:50.0)
//           ),
//           onDismissed: (direction) {
//             manager?.deleteItem(index);
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('${item.name} dismissed'))
//             );
//           },
//           child: InkWell(
//             child: GroceryTile(
//               key: ValueKey(item.id),
//               item: item,
//               onComplete: (change){
//                 manager?.completeItem(index,change);
//               },
//             ),
//             onTap: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context)=> GroceryItemScreen(
//                     originalItem: item,
//                     onUpdate: (item){
//                       manager?.updateItem(item, index);
//                       Navigator.pop(context);
//                     },
//                   ))
//                 );
//             },
//           ),
//         );