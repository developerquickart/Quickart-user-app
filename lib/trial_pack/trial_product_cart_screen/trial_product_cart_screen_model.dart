import '/backend/api_requests/api_calls.dart';
import '/components/empty_data_two_line_component/empty_data_two_line_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/index.dart';
import 'trial_product_cart_screen_widget.dart'
    show TrialProductCartScreenWidget;
import 'package:flutter/material.dart';

class TrialProductCartScreenModel
    extends FlutterFlowModel<TrialProductCartScreenWidget> {
  ///  Local state fields for this page.

  String? selectedPaymentMethod = 'Pay Now';

  bool checkAddressExits = false;

  String? selectedDate;

  String? selectedTIme;

  String isDateTimeOpen = 'false';

  String message = 'Cart Items';

  bool isPaymentDone = true;

  bool isLoaderIndicator = false;

  bool doorImage = false;

  bool uploadedShow = false;

  bool uploadShow = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? internet;
  // Stores action output result for [Backend Call - API (addtrailpack)] action in IconButton widget.
  ApiCallResponse? apiResultRemoveTrialP;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TrialCartPaymentRadioButton widget.
  FormFieldController<String>? trialCartPaymentRadioButtonValueController;
  // Stores action output result for [Custom Action - checkInternetConnection] action in ApplePayContainer widget.
  bool? connectivityResult4;
  // Stores action output result for [Custom Action - isVpnEnabled] action in ApplePayContainer widget.
  bool? isVpnON;
  // Stores action output result for [Backend Call - API (trailpayment)] action in ApplePayContainer widget.
  ApiCallResponse? apiResultTrialPackPayment1;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? connectivityResult3;
  // Stores action output result for [Custom Action - isVpnEnabled] action in Container widget.
  bool? isVpnQP;
  // Stores action output result for [Backend Call - API (trailpayment)] action in Container widget.
  ApiCallResponse? apiResultTrialPackPayment;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? connectivityResult2;
  // Stores action output result for [Backend Call - API (checkouttrailpack)] action in Container widget.
  ApiCallResponse? apiResultTrialpack;
  // Stores action output result for [Backend Call - API (checkouttrailpack)] action in Container widget.
  ApiCallResponse? apiResultTrialpack1;
  // Model for EmptyDataTwoLineComponent component.
  late EmptyDataTwoLineComponentModel emptyDataTwoLineComponentModel;

  @override
  void initState(BuildContext context) {
    emptyDataTwoLineComponentModel =
        createModel(context, () => EmptyDataTwoLineComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    emptyDataTwoLineComponentModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get trialCartPaymentRadioButtonValue =>
      trialCartPaymentRadioButtonValueController?.value;
}
