import '/flutter_flow/flutter_flow_util.dart';
import 'startup_page_widget.dart' show StartupPageWidget;
import 'package:flutter/material.dart';

class StartupPageModel extends FlutterFlowModel<StartupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
