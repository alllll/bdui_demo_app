import 'dart:convert';

import 'package:bdui_pod_flutter/main.dart';
import 'package:bdui_pod_flutter/src/custom_action_handler.dart';
import 'package:bdui_pod_flutter/src/network/serverpod_client.dart';
import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage>
    with AutomaticKeepAliveClientMixin<ServicesPage> {
  late Future<String> services;

  @override
  void initState() {
    services = client.services.services();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    services = client.services.services();
                  });
                },
                child: const Text('Refresh'))),
        Expanded(
          child: SingleChildScrollView(
            child: FutureBuilder(
              future: services,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return DivKitView(
                    data:
                        DefaultDivKitData.fromJson(jsonDecode(snapshot.data!)),
                    actionHandler: CustomActionHandler(
                        client: client, navigator: navigatorKey),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
