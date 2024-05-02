import '/flutter_flow/flutter_flow_util.dart';
import 'customer_productpage_widget.dart' show CustomerProductpageWidget;
import 'package:flutter/material.dart';

class CustomerProductpageModel
    extends FlutterFlowModel<CustomerProductpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
