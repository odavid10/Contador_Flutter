import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle( fontSize: 25);
  int _contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Taps: ', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Sizebox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: Sizebox()),: 
        FloatingActionButton( child: Icon(Icons.remove), onPressed:_sustraer),
        Sizebox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar ),
      ],
    );
  }

  void _agregar(){
    setState(() => _contador++ );
  }

  void _sustraer(){
    setState(() => _contador-- );
  }

  void _reset(){
    setState(() => _contador = 0 );
  }
}        
