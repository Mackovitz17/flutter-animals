import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dogs_model.dart';
export 'dogs_model.dart';

class DogsWidget extends StatefulWidget {
  const DogsWidget({Key? key}) : super(key: key);

  @override
  _DogsWidgetState createState() => _DogsWidgetState();
}

class _DogsWidgetState extends State<DogsWidget> {
  late DogsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DogsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 450.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: CachedNetworkImage(
                            imageUrl:
                                'data:image/jpeg;base64,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',
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 450.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.9, -0.84),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            buttonSize: 48.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await launchURL('https://random.dog');
                    },
                    text: 'Generuj nowe zdjęcie',
                    icon: Icon(
                      Icons.loop,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF4B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
