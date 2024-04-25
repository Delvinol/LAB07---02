import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Larez',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Larez'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.piano),
              title: Text('Temas'),
              subtitle: Text('Temas - Fondos de pantalla'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Pantalla de inicio'),
              subtitle: Text('Diseño - Glboos de notificaciones'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.block),
              title: Text('Pantalla de bloqueo'),
              subtitle: Text('Always on Display'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.shield),
              title: Text('Seguridad y privacidad'),
              subtitle: Text('Datos biometricos - Administrador de permisos'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.gps_fixed),
              title: Text('Ubicación'),
              subtitle: Text('Solicitudes de ubicación'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.safety_check),
              title: Text('Seguridad y emergencia'),
              subtitle: Text('Datos médicos - Alertas de emergencias'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Cuentas y respaldo'),
              subtitle: Text('Administrar cuentas - Smart Switch'),
              onTap: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
