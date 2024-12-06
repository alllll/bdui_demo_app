import 'dart:convert';

import 'package:bdui_pod_flutter/src/network/serverpod_client.dart';
import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage>
    with AutomaticKeepAliveClientMixin<PostsPage> {
  late Future<String> services;

  @override
  void initState() {
    services = client.services.posts(1);
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
                    services = client.services.posts(1);
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
                    key: UniqueKey(),
                    data:
                        DefaultDivKitData.fromJson(jsonDecode(snapshot.data!)),
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
