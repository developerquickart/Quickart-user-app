import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'google_maps_redirect_widget.dart' show GoogleMapsRedirectWidget;
import 'package:flutter/material.dart';

class GoogleMapsRedirectModel
    extends FlutterFlowModel<GoogleMapsRedirectWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // Stores action output result for [Custom Action - getAddressformMap] action in Button widget.
  String? getAddressfromMap;
  // Stores action output result for [Backend Call - API (getZoneID)] action in Button widget.
  ApiCallResponse? apiResultic8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
