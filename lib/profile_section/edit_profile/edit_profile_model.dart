import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  String? userName;

  bool? profilePhoto = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadedImage = false;
  FFUploadedFile uploadedLocalFile_uploadedImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Your Name';
    }

    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return 'Please enter name in correct format';
    }
    return null;
  }

  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internetResult;
  // Stores action output result for [Backend Call - API (editProfile)] action in Button widget.
  ApiCallResponse? apiResulEditProfile;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Row widget.
  bool? connectivityResult;
  // Stores action output result for [Backend Call - API (userdeactivate)] action in Row widget.
  ApiCallResponse? apiResultUserDeactiviate;
  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? connectivityResultC;
  // Stores action output result for [Backend Call - API (userdeactivate)] action in IconButton widget.
  ApiCallResponse? apiResultUserDeactiviate1;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
