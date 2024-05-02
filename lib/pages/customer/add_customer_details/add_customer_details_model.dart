import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_customer_details_widget.dart' show AddCustomerDetailsWidget;
import 'package:flutter/material.dart';

class AddCustomerDetailsModel
    extends FlutterFlowModel<AddCustomerDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for Addresss widget.
  FocusNode? addresssFocusNode;
  TextEditingController? addresssTextController;
  String? Function(BuildContext, String?)? addresssTextControllerValidator;
  // State field(s) for Customerid widget.
  FocusNode? customeridFocusNode;
  TextEditingController? customeridTextController;
  String? Function(BuildContext, String?)? customeridTextControllerValidator;
  // State field(s) for Customertype widget.
  String? customertypeValue;
  FormFieldController<String>? customertypeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    addresssFocusNode?.dispose();
    addresssTextController?.dispose();

    customeridFocusNode?.dispose();
    customeridTextController?.dispose();
  }
}
