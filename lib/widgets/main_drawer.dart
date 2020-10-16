import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            //  color: Color(0xFF010C0C),
            child: Text(
              'Notifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xff00DBD4),
            ),
            ),

          ),
          SizedBox(height: 20,),

         ListTile(

       leading: ConstrainedBox(
            
        constraints: BoxConstraints(
        
          minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
           
        ),
      
        child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover,),
          ),
         title: Text('New one'),
           onTap: () {}
        ),

         SizedBox(height: 30,),

         ListTile(
          leading: ConstrainedBox(
        constraints: BoxConstraints(
           minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
          
        ),
        child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover),
        
          ),
         title: Text('New one'),
          onTap: () {}
        ),

          SizedBox(height: 30,),

           ListTile(
          leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
        ),
        child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover),
          ),
         title: Text('New one '),
          onTap: () {}
        ),

         SizedBox(height: 30,),

         ListTile(
          leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
        ),
        child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover),
          ),
         title: Text('New one'),
          onTap: () {}
        ),

        SizedBox(height: 30,),

      ListTile(
          leading: ConstrainedBox(
        constraints: BoxConstraints(
           minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
        ),
        child: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        child:Image.asset('assets/images/girl.jpg', fit: BoxFit.cover)),
          ),
         title: Text('New one'),
          onTap: () {}

          
        ),
        
        

          SizedBox(height: 30,),

            ListTile(
          leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 150,
          maxWidth: 100,
          maxHeight: 150,
        ),
        child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover),
        
          ),
         title: Text('New one'),
          onTap: () {}
        ),

      


        //new added

//        Container(
//          alignment: Alignment.centerLeft,
//   width: 90.0,
//   height: 90.0,
//   decoration: BoxDecoration(
//     image: DecorationImage(
//         fit: BoxFit.cover, image: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.ZItkIz-sfDWywFli15_ShgHaE6&pid=Api&P=0&w=230&h=153')),
//     borderRadius: BorderRadius.all(Radius.circular(8.0)
//     ),
//     color: Colors.redAccent,
//   ),
// ),



        ],
      ),
    );
  }
}