import 'package:animated_prompt/animated_prompt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('Icons'),
        centerTitle: true,
      ),
      body: const Center(
        child: AnimatedPrompt(
          title: 'Thank you for your order!',
          subTitle: 'Your order will be delivered in 2 days. Enjoy!',
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}
