import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      fit: StackFit.expand,
    children: [
      Image(
      image: AssetImage("Assets/myimage.jpg"),
        fit: BoxFit.cover,
        color: Colors.black54,
        colorBlendMode: BlendMode.darken,
      ),
      Container(
padding: const EdgeInsets.all(20),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
children: [
  FlutterLogo(
size: 60,
),
  Form(
    child: Theme(
      data: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.teal,
          )
        )

      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "email address",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "password",
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            MaterialButton(
              height: 40,
              minWidth: 100,
              child: Icon(
                Icons.arrow_forward
              ),
              color: Colors.teal,
              splashColor: Colors.tealAccent,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            )
          ],
        ),
      ),
    ),
  )
],
),
)
],
    ),
    );
  }
}
