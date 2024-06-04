import '/flutter_flow/flutter_flow_util.dart';
import 'onboading_widget.dart' show OnboadingWidget;
import 'package:flutter/material.dart';

class OnboadingModel extends FlutterFlowModel<OnboadingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
