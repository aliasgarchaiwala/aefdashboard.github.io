import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
 
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
  
}
 
class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        appBar: AppBar(
         centerTitle: true, 
          title: Text('Anjuman E Fatemi Dashboard'),
        ),
        body: Padding(
          
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Admin Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ITS  NO.',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passcode',
                    ),
                  ),
                ),
                
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {

                        print(nameController.text);
                        
                        print(passwordController.text);
                      },
                    )),
             
              ],
            )));
  }
}