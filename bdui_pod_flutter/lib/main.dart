import 'package:bdui_pod_flutter/src/network/serverpod_client.dart';
import 'package:bdui_pod_flutter/src/pages/posts_page.dart';
import 'package:bdui_pod_flutter/src/pages/services_page.dart';
import 'package:divkit/divkit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>(
  debugLabel: "DivKit Playground App",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  logger
    ..keepLog = kDebugMode
    ..onLog = print;

  debugPrintDivKitViewLifecycle = true;
  debugPrintDivExpressionResolve = true;
  debugPrintDivPerformLayout = false;

  await initializeServerpodClient();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BDUI DEMO',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BDUI(DivKit) + Serverpod'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final PageController pageController = PageController();

  int currentIndex = 0;

  final globalPostsKey = GlobalKey(debugLabel: 'posts');

  final globalServicesKey = GlobalKey(debugLabel: 'services');

  @override
  void initState() {
    super.initState();

    //  services();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: pageController,
        children: [
          ServicesPage(
            key: globalServicesKey,
          ),
          PostsPage(
            key: globalPostsKey,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services), label: 'Сервисы'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Посты'),
        ],
        onTap: (value) async {
          await pageController.animateToPage(value,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut);

          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
