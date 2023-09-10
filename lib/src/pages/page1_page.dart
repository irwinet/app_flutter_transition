import 'package:app_flutter_transition/src/pages/page2_page.dart';
import 'package:flutter/material.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Text('Pagina 1'),
     ),
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.access_time),
      onPressed: (){
        Navigator.push(context, _crearRuta());
      },
     ),
   );
  }
  
  Route _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2Page(),
      // transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return SlideTransition(
          // position: Tween<Offset>(begin: Offset(0.5,1.0), end: Offset.zero).animate(curvedAnimation),
          // position: Tween<Offset>(begin: Offset(-0.5,1.0), end: Offset.zero).animate(curvedAnimation),
          // position: Tween<Offset>(begin: Offset(0.0,1.0), end: Offset.zero).animate(curvedAnimation),
          position: Tween<Offset>(begin: Offset(0.0,-1.0), end: Offset.zero).animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}