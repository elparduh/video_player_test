import 'package:flutter/material.dart';
import 'package:video_player_test/widgets/primary_button.dart';
//https://firebasestorage.googleapis.com/v0/b/mrchordapp-34f1d.appspot.com/o/IMG_2962.MOV?alt=media&token=d12c4455-dd5e-4e8b-8255-17c446794d7f
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),

    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PrimaryButton(
            text: 'Show video',
            backgroundColor: Colors.black87,
            onPressed: () {

            },
          ),
        )
      ),
    );
  }
}



