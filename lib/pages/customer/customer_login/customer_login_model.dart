import '/flutter_flow/flutter_flow_util.dart';
import 'customer_login_widget.dart' show CustomerLoginWidget;
import 'package:flutter/material.dart';

class CustomerLoginModel extends FlutterFlowModel<CustomerLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CustomerName widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameTextController;
  String? Function(BuildContext, String?)? customerNameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    customerNameFocusNode?.dispose();
    customerNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
