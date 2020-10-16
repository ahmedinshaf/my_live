import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  static String tag = 'contactlist-page';

  @override
  State<StatefulWidget> createState() {
    return new _SearchBarScreenState();
  }
}

List<Contact> contacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
  Contact(fullName: 'Narendra', email: 'Narendra@example.com'),
  Contact(fullName: 'Sravan ', email: 'Sravan@example.com'),
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];

class _SearchBarScreenState extends State<SearchBarScreen> {
  TextEditingController searchController = new TextEditingController();
  String filter;

  @override
  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios,
                color: Color(0xff00DBD4),
              ),
              onPressed: () => Navigator.pop(context)),
          // iconTheme: IconThemeData(color: Color(0xff00DBD4)),
          centerTitle: true,
          title: Text(
            'Search',
            style: TextStyle(
              fontSize: 35.0,
              color: Color(0xff00DBD4),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
              child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search by name',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),
            //   new Expanded(
            //     child: new ListView.builder(
            //       itemCount: contacts.length,
            //       itemBuilder: (context, index) {
            //         // if filter is null or empty returns all data   return filter == null || filter == ""                      ? ListTile(
            //         title:
            //         Text(
            //           '${contacts[index].fullName}',
            //         );
            //         subtitle:
            //         Text('${contacts[index].email}');
            //         leading:
            //         new CircleAvatar(
            //             backgroundColor: Colors.blue,
            //             child:
            //                 Text('${contacts[index].fullName.substring(0, 1)}'));
            //         onTap:
            //         () => _onTapItem(context, contacts[index]);

            //         '${contacts[index].fullName}'
            //                 .toLowerCase()
            //                 .contains(filter.toLowerCase())
            //             ? ListTile(
            //                 title: Text(
            //                   '${contacts[index].fullName}',
            //                 ),
            //                 subtitle: Text('${contacts[index].email}'),
            //                 leading: new CircleAvatar(
            //                     backgroundColor: Colors.blue,
            //                     child: Text(
            //                         '${contacts[index].fullName.substring(0, 1)}')),
            //                 onTap: () => _onTapItem(context, contacts[index]),
            //               )
            //             : new Container();
            //       },
            //     ),
            //   ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
