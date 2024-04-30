import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for AddCustomerId widget.
  FocusNode? addCustomerIdFocusNode;
  TextEditingController? addCustomerIdTextController;
  String? Function(BuildContext, String?)? addCustomerIdTextControllerValidator;
  // State field(s) for AddCustomerName widget.
  FocusNode? addCustomerNameFocusNode;
  TextEditingController? addCustomerNameTextController;
  String? Function(BuildContext, String?)?
      addCustomerNameTextControllerValidator;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    addCustomerIdFocusNode?.dispose();
    addCustomerIdTextController?.dispose();

    addCustomerNameFocusNode?.dispose();
    addCustomerNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
