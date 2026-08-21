import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'date_time_slot_bottom_sheet_widget.dart'
    show DateTimeSlotBottomSheetWidget;
import 'package:flutter/material.dart';

class DateTimeSlotBottomSheetModel
    extends FlutterFlowModel<DateTimeSlotBottomSheetWidget> {
  ///  Local state fields for this component.

  dynamic productJson;

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

  String surgeCharge = 'surge_charge';

  String valueType = '0';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkInternetConnection] action in Container widget.
  bool? internetCheck1;
  // Stores action output result for [Backend Call - API (upquickordertimeslot)] action in Container widget.
  ApiCallResponse? apiResultsqz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
