import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'google_maps_redirect_copy_widget.dart'
    show GoogleMapsRedirectCopyWidget;
import 'package:flutter/material.dart';

class GoogleMapsRedirectCopyModel
    extends FlutterFlowModel<GoogleMapsRedirectCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // Stores action output result for [Custom Action - getAddressformMap] action in Button widget.
  String? getAddressfromMap;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
