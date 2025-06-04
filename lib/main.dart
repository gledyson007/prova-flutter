import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
      'https://scontent-for2-2.xx.fbcdn.net/v/t1.6435-9/59454848_152292565810023_7851592880178069504_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_ohc=Avqc43zQnywQ7kNvwEgOz38&_nc_oc=AdlnCPWCEpYOmIpiL3n8N4mJZo0ReH3uUjLuHzrLY2ydjov-HHUSL4egz_HM93meYMs&_nc_zt=23&_nc_ht=scontent-for2-2.xx&_nc_gid=U6-r99nZR3p2mRYAEz2n4Q&oh=00_AfJ3jSlFxVp8SeuYRxwiNsINIFPUuKRbV7v84tjdwteTjg&oe=685EE782',
    ),
    radius: 150,
  );
  final nome = const Text(
    'Francisco Gledyson',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '85991753801'));
    },
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.mail),
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'exemplo@email.com'));
    },
  );
  final botaoSMS = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '85991753801'));
    },
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto,
        nome,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [botaoTelefone, botaoEmail, botaoSMS],
        ),
      ],
    ),
  );
}
