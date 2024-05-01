import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_product_page_copy_widget.dart' show AddProductPageCopyWidget;
import 'package:flutter/material.dart';

class AddProductPageCopyModel
    extends FlutterFlowModel<AddProductPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ProductId widget.
  FocusNode? productIdFocusNode;
  TextEditingController? productIdTextController;
  String? Function(BuildContext, String?)? productIdTextControllerValidator;
  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for CategoryCode widget.
  FocusNode? categoryCodeFocusNode;
  TextEditingController? categoryCodeTextController;
  String? Function(BuildContext, String?)? categoryCodeTextControllerValidator;
  // State field(s) for SellingPrice widget.
  FocusNode? sellingPriceFocusNode;
  TextEditingController? sellingPriceTextController;
  String? Function(BuildContext, String?)? sellingPriceTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblproductsRow? addproduct;
  // State field(s) for MfgDate widget.
  FocusNode? mfgDateFocusNode;
  TextEditingController? mfgDateTextController;
  String? Function(BuildContext, String?)? mfgDateTextControllerValidator;
  // State field(s) for ExpDate widget.
  FocusNode? expDateFocusNode;
  TextEditingController? expDateTextController;
  String? Function(BuildContext, String?)? expDateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    productIdFocusNode?.dispose();
    productIdTextController?.dispose();

    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    categoryCodeFocusNode?.dispose();
    categoryCodeTextController?.dispose();

    sellingPriceFocusNode?.dispose();
    sellingPriceTextController?.dispose();

    mfgDateFocusNode?.dispose();
    mfgDateTextController?.dispose();

    expDateFocusNode?.dispose();
    expDateTextController?.dispose();
  }
}
