import 'package:flutter/material.dart';

void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});


 @override
 Widget build(BuildContext context) {
  return MaterialApp(
   title: 'Flutter Demo',
   theme: ThemeData(
    primarySwatch: Colors.blue,
   ),
   home: MyHomePage(title: 'Flutter Demo Home Page'),
  );
 }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});


 final String title;

 @override
 State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _counter = 0;

 void _incrementCounter() {
  setState(() {
   _counter++;
  });
 }

 @override
 Widget build(BuildContext context) {

  var icons;
  return Scaffold(
   appBar: AppBar(
    leading: Icon(Icons.menu),
    title: Text(widget.title),
    actions: [
     IconButton(
         icon:  Icon(Icons.remove),
      onPressed: () {
        print('Remeve');
     },
     ),
     IconButton(
         icon:  Icon(Icons.add_outlined), onPressed: () {
          print('Add');
     },),
    ],
   ),
   body: Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
      const Text(
       'Arttırmak için butona basın !!',
       style: TextStyle(
        color: Color(0xffff0000),
        fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
       ),
      ),
      Text(
       '$_counter',
       style: Theme.of(context).textTheme.headline4,
      ),
      yazi('Su anki değer $_counter'),
      Sayac(
          'Dışaridaki değer $_counter',
       ilkDeger: 3,
      ),

      Text(
       'increment',
      ),
     ],
    ),
   ),
   floatingActionButton: FloatingActionButton(
    onPressed: _incrementCounter,
    tooltip: 'Increment',
    child: const Icon(Icons.add),
   ),
   bottomNavigationBar: BottomNavigationBar(
    currentIndex: 1,
    items: [
     BottomNavigationBarItem(
         icon: Icon(Icons.ac_unit),
           label: 'Bir',
     ),
     BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: 'İki',
     ),
    ],
   ),
  );
 }

}
class yazi extends StatelessWidget {
 final  String icerik;
  const yazi(this.icerik, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(icerik);
  }
}
class Sayac extends StatefulWidget {
 final  String Baslik;
 final int ilkDeger;
   const Sayac(this.Baslik, {Key? key, required this.ilkDeger,}) : super(key: key);

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
 int sayi = 0;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayi = widget.ilkDeger;
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       setState(() {
        sayi++;
       });
      },
      child: Text(
          '${widget.Baslik}, içerideki:  $sayi'),
    );
  }
}

