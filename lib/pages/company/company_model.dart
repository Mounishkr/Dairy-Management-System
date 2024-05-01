import '/flutter_flow/flutter_flow_util.dart';
import 'company_widget.dart' show CompanyWidget;
import 'package:flutter/material.dart';

class CompanyModel extends FlutterFlowModel<CompanyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
