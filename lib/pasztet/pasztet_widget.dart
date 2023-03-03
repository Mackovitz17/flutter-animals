import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pasztet_model.dart';
export 'pasztet_model.dart';

class PasztetWidget extends StatefulWidget {
  const PasztetWidget({Key? key}) : super(key: key);

  @override
  _PasztetWidgetState createState() => _PasztetWidgetState();
}

class _PasztetWidgetState extends State<PasztetWidget> {
  late PasztetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasztetModel());
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
                  'Przepis na pasztet z królika - składniki:\n1 królik (około 1 kg mięsa)\n300 g wątróbki z królika lub drobiowej\n300 g boczku\n300 g łopatki lub podgardla (dzięki temu dodatkowi pasztet będzie kleisty i zwarty)\n4 jajka\n2 marchewki\n2 małe pietruszki\n2 cebule\n1 por\n1/2 selera\n2 czerstwe bułki\nmleko lub bulion do namoczenia bułek\n3 liście laurowe\nkilka ziaren ziela angielskiego\nmajeranek\ngałka muszkatołowa\nsłodka papryka\nsól i pieprz\nPasztet z królika - przepis krok po kroku:\nMięso z królika poporcjuj, boczek i łopatkę pokrój na mniejsze kawałki. Do dużego garnka wlej wodę, dodaj liście laurowe i ziarna ziela angielskiego. Wrzuć do wody marchewki, pietruszki, por, seler oraz mięso z królika i łopatki lub pogardla. Gotuj do miękkości.\nW tym czasie cebulę i boczek pokrój w kostkę. Na rozgrzaną patelnię wrzuć boczek, a następnie, gdy się wytopi tłuszcz, dodaj cebulę. Gdy cebula się zeszkli, a boczek przesmaży, zdejmij je z patelni i połóż na niej wątróbkę. ',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('pasztetCopy');
                },
                text: 'Dalej',
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
