import 'package:expense_manager/addExpense.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('₹2000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Expense',style: TextStyle(color: Colors.red),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('School fees')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹3000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Income',style: TextStyle(color: Colors.green),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('Bank')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹1000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Expense',style: TextStyle(color: Colors.red),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('Food')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹500',style: TextStyle(fontSize: 23),),
                subtitle: Text('Income',style: TextStyle(color: Colors.green),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('Over time')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹1000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Expense',style: TextStyle(color: Colors.red),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('School fees')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹5000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Income',style: TextStyle(color: Colors.green),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('Salary')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹1000',style: TextStyle(fontSize: 23),),
                subtitle: Text('Expense',style: TextStyle(color: Colors.red),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('School fees')
                  ],
                ),
              ),
            ),Card(
              child: ListTile(
                title: Text('₹500',style: TextStyle(fontSize: 23),),
                subtitle: Text('Income',style: TextStyle(color: Colors.green),),
                trailing: Column(
                  children: <Widget>[
                    Text('27-05-2019'),
                    Text('School fees')
                  ],
                ),
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExpenseAdd()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
