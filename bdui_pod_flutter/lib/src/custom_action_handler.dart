import 'dart:async';
import 'dart:convert';

import 'package:bdui_pod_client/bdui_pod_client.dart';
import 'package:bdui_pod_flutter/src/pages/service_page.dart';
import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';

const _openScreen = 'open_screen';
const _schemeDivAction = 'div-action';
const _serviceDetail = 'service';
const _paramActivity = 'page';

class CustomActionHandler extends DivActionHandler {
  final GlobalKey<NavigatorState> _navigator;

  final _typedHandler = DefaultDivActionHandlerTyped();

  final Client client;

  NavigatorState get _navigationManager =>
      Navigator.of(_navigator.currentContext!);

  CustomActionHandler({
    required GlobalKey<NavigatorState> navigator,
    required this.client,
  }) : _navigator = navigator;

  @override
  bool canHandle(DivContext context, DivActionModel action) {
    if (_typedHandler.canHandle(context, action)) {
      return true;
    }

    final uri = action.url;
    if (uri != null) {
      if (uri.scheme == _schemeDivAction &&
          uri.host == _openScreen &&
          [
            _serviceDetail,
          ].contains(uri.queryParameters[_paramActivity])) {
        return true;
      }

      if (uri.scheme == _schemeDivAction && uri.host == 'download') {
        return true;
      }
    }

    return false;
  }

  @override
  FutureOr<bool> handleAction(DivContext context, DivActionModel action) async {
    if (_typedHandler.canHandle(context, action)) {
      return _typedHandler.handleAction(context, action);
    }

    final uri = action.url;
    if (uri == null) {
      return false;
    }

    if (uri.scheme == _schemeDivAction && uri.host == 'download') {
      final result = jsonDecode(await client.services.patchPosts(1))
          as Map<String, dynamic>;

      final changes = (result['patch']['changes'] as List<dynamic>)
          .map((e) => DivPatchChange.fromJson(e)!)
          .toList();

      await context.patchManager.applyPatch(
          DivPatchModel(mode: DivPatchMode.partial, changes: changes));
      return true;
    }

    return handleUrlAction(context, uri);
  }

  bool handleUrlAction(DivContext context, Uri uri) {
    if (uri.scheme != _schemeDivAction || uri.host != _openScreen) {
      return false;
    }
    switch (uri.queryParameters[_paramActivity]) {
      case _serviceDetail:
        _navigationManager.push(
          MaterialPageRoute(
            builder: (_) => const ServicePage(),
          ),
        );
        break;

      default:
        showSnackBar('Action is not supported yet');
        return false;
    }

    return true;
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(_navigator.currentContext!).hideCurrentSnackBar();
    ScaffoldMessenger.of(_navigator.currentContext!).showSnackBar(
      SnackBar(content: Text(text)),
    );
  }
}
