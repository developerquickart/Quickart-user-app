import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'rating_bar_component_new_model.dart';
export 'rating_bar_component_new_model.dart';

class RatingBarComponentNewWidget extends StatefulWidget {
  const RatingBarComponentNewWidget({super.key});

  @override
  State<RatingBarComponentNewWidget> createState() =>
      _RatingBarComponentNewWidgetState();
}

class _RatingBarComponentNewWidgetState
    extends State<RatingBarComponentNewWidget> {
  late RatingBarComponentNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingBarComponentNewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
