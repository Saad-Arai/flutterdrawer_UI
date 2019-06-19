import 'package:drawer/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepPurple,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.deepPurple[50]
      :null),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
     /* routes: <String,WidgetBuilder>{
        "/a": (BuildContext context) => new NewPage("New Page"),
      }*/
    );
  }
}

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Muhammad Saad"),
              accountEmail: new Text("mohammadsaad781@yahoo.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("M"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("S"),
                )
              ],
              
            ),
            new ListTile(
              title: new Text("My apps & games"),
              trailing: new Icon(Icons.apps),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => 
                new NewPage("404 Not Found")));
              },
            ),
            new ListTile(
              title: new Text("Notification"),
              trailing: new Icon(Icons.notifications),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new ListTile(
              title: new Text("Subscription"),
              trailing: new Icon(Icons.subscriptions),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new ListTile(
              title: new Text("Wishlist"),
              trailing: new Icon(Icons.transfer_within_a_station),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Account"),
              trailing: new Icon(Icons.account_box),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new ListTile(
              title: new Text("Payment methods"),
              trailing: new Icon(Icons.payment),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                new NewPage("404 Not Found")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("About Google Play"),
              trailing: new Icon(Icons.more),
              onTap: () {
                Navigator.of(
                    context).pop(
                );
                Navigator.of(
                    context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new NewPage(
                            "404 Not Found")));
              }
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("This is a Home page"),
        ),
      ),
    );
  }
}

