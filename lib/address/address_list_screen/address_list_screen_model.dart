import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'address_list_screen_widget.dart' show AddressListScreenWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AddressListScreenModel extends FlutterFlowModel<AddressListScreenWidget> {
  ///  Local state fields for this page.

  bool checkAddressExits = false;

  String nullValue = 'Null';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getZoneID)] action in Container widget.
  ApiCallResponse? getZone;
  // Stores action output result for [Backend Call - API (updateselectedaddress)] action in Container widget.
  ApiCallResponse? updateZoneIDResult;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? connectivityResult;
  // Stores action output result for [Backend Call - API (removeaddress)] action in IconButton widget.
  ApiCallResponse? apiResultDeleteAddress;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
}
