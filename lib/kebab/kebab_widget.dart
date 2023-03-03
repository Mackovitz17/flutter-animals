import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kebab_model.dart';
export 'kebab_model.dart';

class KebabWidget extends StatefulWidget {
  const KebabWidget({Key? key}) : super(key: key);

  @override
  _KebabWidgetState createState() => _KebabWidgetState();
}

class _KebabWidgetState extends State<KebabWidget> {
  late KebabModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KebabModel());
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Text(
                    'przygotowanie\nMięso umyć, osuszyć, pokroić w kostkę, zmielić . Przełożyć do misy robota ( z mieszadłem do ciast drożdżowych), dodać sól, 1 łyżeczkę kminu, 1 łyżkę sumaku i 1 łyżeczkę  płatków paprykowych. Mieszać tak długo aż mięso stanie się   lepkie i zacznie  przylegać do boku miski. Dodać wodę i mieszać jeszcze przez chwilę aż woda zostanie wchłonięta. Masę przełożyć do miski, wstawić do lodówki i dobrze chłodzić.\n\nCebulę pokroić w cienkie krążki, posypać 2 łyżeczkami sumaku, lekko posolić do smaku, wymieszać, odstawić. \n\nPrzygotować szaszłyki.\nJeżeli używamy patyczków drewnianych, należy je przed przygotowaniem szaszłyków wymoczyć w wodzie. Zmoczyć ręce. Mięso, po wyjęciu z lodówki, podzielić na równe porcje (8 - 10) - zależy od wielkości naszych patyczków szaszłykowych.  Uformować grube mięsne wałki, każdy nadziać na patyczek, a następnie  starać się jak najbardziej wałki wokół patyczków rozpłaszczyć i wydłużyć. \nKebaby grillować na mocno rozgrzanych węglach.\nKiedy kebaby są już prawie gotowe,  można ułożyć obok nich pity aby lekko się podgrzały.\nPodawać kebaby z ciepłym chlebem, cebulką z sumakiem, posypane natką pietruszki.\nSmacznego!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
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
