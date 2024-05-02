import '/flutter_flow/flutter_flow_util.dart';
import 'feedback_form_widget.dart' show FeedbackFormWidget;
import 'package:flutter/material.dart';

class FeedbackFormModel extends FlutterFlowModel<FeedbackFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CustomerFeedBackID widget.
  FocusNode? customerFeedBackIDFocusNode;
  TextEditingController? customerFeedBackIDTextController;
  String? Function(BuildContext, String?)?
      customerFeedBackIDTextControllerValidator;
  // State field(s) for Rating widget.
  FocusNode? ratingFocusNode;
  TextEditingController? ratingTextController;
  String? Function(BuildContext, String?)? ratingTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customerFeedBackIDFocusNode?.dispose();
    customerFeedBackIDTextController?.dispose();

    ratingFocusNode?.dispose();
    ratingTextController?.dispose();
  }
}
