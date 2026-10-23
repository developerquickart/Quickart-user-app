import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_data_two_line_component/empty_data_two_line_component_widget.dart';
import '/components/products_list_view/products_list_view_widget.dart';
import '/components/save_letterproducts_list/save_letterproducts_list_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/index.dart';
import 'daily_cart_screen_widget.dart' show DailyCartScreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class DailyCartScreenModel extends FlutterFlowModel<DailyCartScreenWidget> {
  ///  Local state fields for this page.

  String selectedPaymentMethod = 'Pay Now';

  String? isWalletCheckBoxSelected = 'remove';

  bool isScheduleSelected = false;

  String? subscritionPaymentMethod = 'Pay Now';

  String isSubWalletCheckBoxSelected = 'remove';

  bool checkAddressExits = false;

  bool isLoadingIndicator = false;

  bool isFreshCutSelected = false;

  String? freshCutTimeSlot;

  String? selectedCartID;

  List<DailyDateTimeSlotsStruct> selectedArrayJson = [];
  void addToSelectedArrayJson(DailyDateTimeSlotsStruct item) =>
      selectedArrayJson.add(item);
  void removeFromSelectedArrayJson(DailyDateTimeSlotsStruct item) =>
      selectedArrayJson.remove(item);
  void removeAtIndexFromSelectedArrayJson(int index) =>
      selectedArrayJson.removeAt(index);
  void insertAtIndexInSelectedArrayJson(
          int index, DailyDateTimeSlotsStruct item) =>
      selectedArrayJson.insert(index, item);
  void updateSelectedArrayJsonAtIndex(
          int index, Function(DailyDateTimeSlotsStruct) updateFn) =>
      selectedArrayJson[index] = updateFn(selectedArrayJson[index]);

  String? isDateTImeHide = 'false';

  int? index = 0;

  bool isPaymentDone = true;

  bool checkRestriction = false;

  bool doorImage = false;

  bool uploadImgShow = false;

  bool uploadedImgShow = false;

  bool isShowAnimation = false;

  bool isSuccessTP = false;

  String? isRefWalletCheckBoxSelected = 'remove';

  double totalValue = 0.0;

  bool isOTPSend = false;

  bool isOTPVerified = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (userbankdetails)] action in dailyCartScreen widget.
  ApiCallResponse? apiResultBankDetail;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (addtosubcart)] action in Container widget.
  ApiCallResponse? apiResultAddSubc;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? networkCheck1;
  // Stores action output result for [Backend Call - API (addtosavecart)] action in Button widget.
  ApiCallResponse? addtoSaveLetter;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internetCheckdc;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtoCartAPIDC;
  // Stores action output result for [Backend Call - API (addtrailpack)] action in Button widget.
  ApiCallResponse? apiResultp09;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internetCheckcp;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtoCartAPIDCP1;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internetCheckdcC;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? remoevtoCartAPIDC;
  // Stores action output result for [Backend Call - API (addtrailpack)] action in Button widget.
  ApiCallResponse? apiResultp099;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? isInternet4;
  // Stores action output result for [Backend Call - API (updatecart)] action in Container widget.
  ApiCallResponse? apiResultupdate;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internetCheckcp1;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtoCartAPID;
  // Model for productsListView component.
  late ProductsListViewModel productsListViewModel;
  // State field(s) for CheckboxWallet widget.
  bool? checkboxWalletValue1;
  // State field(s) for CheckboxWallet widget.
  bool? checkboxWalletValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for saveLetterproductsList component.
  late SaveLetterproductsListModel saveLetterproductsListModel;
  // State field(s) for DailyCartPaymentRadioButton widget.
  FormFieldController<String>? dailyCartPaymentRadioButtonValueController;
  // Stores action output result for [Custom Action - checkInternetConnection] action in ApplePayContainer widget.
  bool? connectivityResult666Copy;
  // Stores action output result for [Custom Action - isVpnEnabled] action in ApplePayContainer widget.
  bool? isVpnON;
  // Stores action output result for [Backend Call - API (upquickordertimeslot)] action in ApplePayContainer widget.
  ApiCallResponse? apiResultkgz;
  // Stores action output result for [Backend Call - API (payment)] action in ApplePayContainer widget.
  ApiCallResponse? apiResultspayment;
  // Stores action output result for [Backend Call - API (payment)] action in ApplePayContainer widget.
  ApiCallResponse? apiResults5yy6Copy;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult6666;
  // Stores action output result for [Backend Call - API (payment)] action in Button widget.
  ApiCallResponse? apiResults5yy66;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? connectivityResult1Copy;
  // Stores action output result for [Custom Action - isVpnEnabled] action in Container widget.
  bool? isVpnONQP;
  // Stores action output result for [Backend Call - API (upquickordertimeslot)] action in Container widget.
  ApiCallResponse? apiResultyfq;
  // Stores action output result for [Backend Call - API (payment)] action in Container widget.
  ApiCallResponse? apiResultsyy;
  // Stores action output result for [Backend Call - API (payment)] action in Container widget.
  ApiCallResponse? apiResults5yCopy2;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? connectivityResultPO;
  // Stores action output result for [Backend Call - API (upquickordertimeslot)] action in Container widget.
  ApiCallResponse? apiResult4de;
  // Stores action output result for [Backend Call - API (checkoutquickorder)] action in Container widget.
  ApiCallResponse? apiResult7;
  // Stores action output result for [Backend Call - API (checkoutquickorder)] action in Container widget.
  ApiCallResponse? apiResult2;
  // Stores action output result for [Backend Call - API (checkoutquickorder)] action in Container widget.
  ApiCallResponse? apiResult77;
  // Stores action output result for [Backend Call - API (checkoutquickorder)] action in Container widget.
  ApiCallResponse? apiResult22;
  // Model for EmptyDataTwoLineComponent component.
  late EmptyDataTwoLineComponentModel emptyDataTwoLineComponentModel;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? networkCheck;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtoCartMM;
  // Stores action output result for [Bottom Sheet - VarientBotttomSheet] action in Row widget.
  dynamic returnJson10;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Icon1 widget.
  bool? connectivityResult;
  // Stores action output result for [Backend Call - API (addremwishlist)] action in Icon1 widget.
  ApiCallResponse? addRemoveAPIResponse;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Icon2 widget.
  bool? connectivityResult1;
  // Stores action output result for [Backend Call - API (addremwishlist)] action in Icon2 widget.
  ApiCallResponse? addRemoveAPIResult;
  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? connnectivtyC;
  // Stores action output result for [Backend Call - API (addnotifyme)] action in IconButton widget.
  ApiCallResponse? apiResultb11;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult11;
  // Stores action output result for [Backend Call - API (guestotpsend)] action in Button widget.
  ApiCallResponse? apiGuestOTP;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - checkInternetConnection] action in PinCode widget.
  bool? connectivityOtpResultbutton1;
  // Stores action output result for [Backend Call - API (guestverifyotp)] action in PinCode widget.
  ApiCallResponse? apiResultVerifyOTPGuest;
  // Stores action output result for [Backend Call - API (appinfo)] action in PinCode widget.
  ApiCallResponse? apiResultzwxIOS1buttonCopy1;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Text widget.
  bool? connectivityResultResendOTPWA;
  // Stores action output result for [Backend Call - API (resendOTP)] action in Text widget.
  ApiCallResponse? resendOTPResponse1;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityOtpResultbutton;
  // Stores action output result for [Backend Call - API (guestverifyotp)] action in Button widget.
  ApiCallResponse? apiResultVerifyOTPbutton;
  // Stores action output result for [Backend Call - API (appinfo)] action in Button widget.
  ApiCallResponse? apiResultzwxIOS1button;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '\'Enter a valid email address\'';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return '\'Enter a valid email address\'';
    }
    return null;
  }

  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivity1;
  // Stores action output result for [Backend Call - API (guestverifyotp name)] action in Button widget.
  ApiCallResponse? apiResultvjw;

  @override
  void initState(BuildContext context) {
    productsListViewModel = createModel(context, () => ProductsListViewModel());
    saveLetterproductsListModel =
        createModel(context, () => SaveLetterproductsListModel());
    emptyDataTwoLineComponentModel =
        createModel(context, () => EmptyDataTwoLineComponentModel());
    pinCodeController = TextEditingController();
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    productsListViewModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    saveLetterproductsListModel.dispose();
    emptyDataTwoLineComponentModel.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();
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

  String? get dailyCartPaymentRadioButtonValue =>
      dailyCartPaymentRadioButtonValueController?.value;
}
