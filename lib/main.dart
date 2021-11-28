import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const Top(), routes: <String, WidgetBuilder>{
    '/top': (BuildContext context) => const Top(),
    '/about': (BuildContext context) => const About(),
  }));
}

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TOP')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('aboutページへ遷移する'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text('push here'),
            )
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ABOUT')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('戻る'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('push here'),
            )
          ],
        ),
      ),
    );
  }
}
