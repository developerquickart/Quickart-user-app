import '/backend/api_requests/api_calls.dart';
import '/components/bottomnav_bar/bottomnav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  Local state fields for this page.

  String? nullvalue;

  String orderTypeQuick = 'Quick';

  String typeDaily = 'Quick';

  String typeSubscription = 'subscription';

  String? emptyStringCheck = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ProfileDetails)] action in profilePage widget.
  ApiCallResponse? apiShowProfile;
  // Stores action output result for [Custom Action - getDeviceID] action in profilePage widget.
  String? deviceUUID;
  // Stores action output result for [Custom Action - generateReferralLink] action in Row widget.
  String? refCodeN;
  // Stores action output result for [Custom Action - generateReferralLink] action in IconButton widget.
  String? refCodep;
  // Model for bottomnavBar component.
  late BottomnavBarModel bottomnavBarModel;

  @override
  void initState(BuildContext context) {
    bottomnavBarModel = createModel(context, () => BottomnavBarModel());
  }

  @override
  void dispose() {
    bottomnavBarModel.dispose();
  }
}
