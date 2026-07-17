import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'otp_screen_widget.dart' show OtpScreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpScreenModel extends FlutterFlowModel<OtpScreenWidget> {
  ///  Local state fields for this page.

  bool? resendOTPType = false;

  bool? loader = false;

  String checkAlertVisible = 'false';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
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
  // Stores action output result for [Backend Call - API (Verify OTP)] action in Button widget.
  ApiCallResponse? apiResultVerifyOTPbutton;
  // Stores action output result for [Backend Call - API (getZoneID)] action in Button widget.
  ApiCallResponse? getZoneIDResult;
  // Stores action output result for [Backend Call - API (appinfo)] action in Button widget.
  ApiCallResponse? apiResultzwxIOS1button;
  // Stores action output result for [Backend Call - API (appinfo)] action in Button widget.
  ApiCallResponse? apiResultandroidbutton;
  // Stores action output result for [Backend Call - API (appinfo)] action in Button widget.
  ApiCallResponse? apiResultzwx1;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
  }
}
