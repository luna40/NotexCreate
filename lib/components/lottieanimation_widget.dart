import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'lottieanimation_model.dart';
export 'lottieanimation_model.dart';

class LottieanimationWidget extends StatefulWidget {
  const LottieanimationWidget({super.key});

  @override
  State<LottieanimationWidget> createState() => _LottieanimationWidgetState();
}

class _LottieanimationWidgetState extends State<LottieanimationWidget> {
  late LottieanimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LottieanimationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Lottie.asset(
        'assets/lottie_animations/Animation_-_1708553485186.json',
        width: 150.0,
        height: 130.0,
        fit: BoxFit.cover,
        animate: true,
      ),
    );
  }
}
