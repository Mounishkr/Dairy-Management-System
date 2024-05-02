import '/flutter_flow/flutter_flow_util.dart';
import 'customerdashboard_widget.dart' show CustomerdashboardWidget;
import 'package:flutter/material.dart';

class CustomerdashboardModel extends FlutterFlowModel<CustomerdashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
