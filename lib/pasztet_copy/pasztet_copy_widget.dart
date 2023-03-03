import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pasztet_copy_model.dart';
export 'pasztet_copy_model.dart';

class PasztetCopyWidget extends StatefulWidget {
  const PasztetCopyWidget({Key? key}) : super(key: key);

  @override
  _PasztetCopyWidgetState createState() => _PasztetCopyWidgetState();
}

class _PasztetCopyWidgetState extends State<PasztetCopyWidget> {
  late PasztetCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasztetCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                child: Text(
                  'Jeśli potrzeba, dodaj trochę oleju lub masła. Każdy kawałek wątróbki obsmaż szybko z obu stron, by się zamknęła.Czerstwe bułki namocz w mleku lub w bulionie.\nUgotowane mięso oddziel od kości. Przemiel je przez maszynkę do mięsa (możesz to zrobić dwa albo trzy razy, w zależności od tego, jaką konsystencję ma mieć pasztet). Przemiel również warzywa, namoczone bułki i boczek z cebulką. Masę wymieszaj. Następnie wbij jajka, dodaj gałkę muszkatołową, słodką paprykę, majeranek oraz sól i pieprz do smaku. Wszystkie składniki jeszcze raz dokładnie połącz.\nMasę na pasztet z królika przełóż do keksówek lekko nasmarowanych masłem. Piecz przez godzinę w temperaturze 180 stopni Celsjusza.',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Photos');
                },
                text: 'Powrót',
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
