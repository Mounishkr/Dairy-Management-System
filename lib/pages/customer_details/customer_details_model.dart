import '/flutter_flow/flutter_flow_util.dart';
import 'customer_details_widget.dart' show CustomerDetailsWidget;
import 'package:flutter/material.dart';

class CustomerDetailsModel extends FlutterFlowModel<CustomerDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
