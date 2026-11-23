import 'package:material_ui/material_ui.dart';
// it wouldnt run unlesws i swaped the import out
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _showAltMessage = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Hello 3330!',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: _showAltMessage
              ? const Text(
                  'Button pressed!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              : Image.asset('images/vaquero.jpg'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _showAltMessage = !_showAltMessage;
            });
          },
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          hoverColor: Colors.orangeAccent,
          child: const Icon(Icons.star),
        ),
      ),
    );
  }
}