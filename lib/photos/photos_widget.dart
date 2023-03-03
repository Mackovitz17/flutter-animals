import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'photos_model.dart';
export 'photos_model.dart';

class PhotosWidget extends StatefulWidget {
  const PhotosWidget({Key? key}) : super(key: key);

  @override
  _PhotosWidgetState createState() => _PhotosWidgetState();
}

class _PhotosWidgetState extends State<PhotosWidget> {
  late PhotosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotosModel());
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
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.05, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Czym chcesz dziś zostać zażenowany?',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kotki',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'klasyka',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('kitty');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/4/43/Cute_dog.jpg',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pieski',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'klasyka',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('dogs');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Owieczki',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'kto nie robi się głodny na widok baraniny/jagnięciny?',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('lamb');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtX57oHU6QK27N-QS5iXaIni6rRKIedUlnzA&usqp=CAU',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Żółwie',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'Tylko te co jedzą pizze, są ciekawe',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('turtles');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Króliki',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'Świetny materiał na pasztet',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('bunny');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jeże',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'Dokąd nocą tupta jeż?',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('hedgehog');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFhUZGRgaHBoeHBocGhwcHhweHB4aGiEhIR4hIS4lISMrJBoaJjgnKy8xNTU1HCQ7QDs0Py40NTEBDAwMEA8QHxISHzYrJSwxMTQxNDY0NDY2NDQ0NDQ0NDQ0NDQ0NDY0NDY0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAIDBQYBBwj/xAA+EAACAQIEAwUHBAECBQQDAAABAhEAAwQSITEFQVEiYXGBkQYTMqGxwfBCUtHhFGJyBxUjgvE0kqKyFiQz/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAKREAAgICAgIBAwQDAQAAAAAAAAECESExAxJBUWETIoEEMnGhQpHwYv/aAAwDAQACEQMRAD8A83tvAE9/rXLbCQxjuBqS7jgRCqAvQ661Hhszsq5Vgso2g6mK5220TaZd8RuQbSftRfVtT9RQaWGLtlViIBJAJHrT8ddD3njlMeC6D6UTgOItbY6ypjSe6tF4YLwC2EI35k1KVDIygbg/KtDh+LYe72XKnucR6Gle9n1PbsNOnwEyNeh/mmTsWzDsSUUftNE4iGQN+pYM9RUOPtlJQqQZOjCDUCXjGXurPQ1CxKfqHdQqyT9qMJkDXSKVpQW03pE6QVLAIywal90rDsmG5jr4V18PrGgPjTfcsDMj1prXsdNVsKvMWUAaaU6BkyMdQZHhQxfapBcO8CaTNE5Jjrb5JOXQ6GenhXHBgsBI+lccZqmS7lkaQd52NYZLBFbcxDaAn0PWjMLmVobVTown0I+oNAsQTPIGrHDsGUdRsT03j+KzdIaKpDuKAqq6yCTHQipsFiYQsZMAxP0opuHNctjTRdmHfvp0+lBhCqBRB1Oaems1JtNJfIvJJNKK9gv/AEmAiUbodV9dxXW4TfusFRJA5yMuvOaO4ZwtXOdwSnJRu/nyXr+GrvG8YGHTL2VMdlEEaePId/1qvdXSyaXJnrHLK/CeyTp2nuDaCFX7n+K7fRUGRHluQENJ7+VBpxI32GZyrie8Ed06ipL18WTmQySsZjy8PlUuS7sSUZJdmwm9iFWFuNJ2I2XYaE7SftVbxB7bE/8ATXLHZZYWeuonUeNDWcUryNid559/jUtpyhCliDy0XKflSxj1fyJCKcs4ZHlUplExruZI570JZDEhVViR06eNFi8rDsgCDBiIPfURx7ICoEDeRoST4g08byhoOpNE5skEZvijbeKfftoIztB5KDr5ihL2KB0liTzAk/bWhUwobQFpJ3KN/daMG8t0NGLcnJh5RWZCylk11XeRymrHC8NQt2BpoZaNPzpQeDZlGVzIAheywiPKjl4kyABFUf6idvLr370HKnQJSd9dEXEOKBC1tF1AgvsZOmlCuALkbkAyfJB9jUnEcQXKvlQuCJIYax1E91R4C2XZy5hiJnfWSeXjTqVw1TBNKOETZDyU1yiV00LkR0FKlz8B+32Zp2EbVZcFhWZzMIpIkfqPZX56+VMt8JusucLoZ3OpA7u+hEJ0APZEkiecVVSTumUedFvwRAbpY6qEdiD6VXu+u1H4B8mHvuNyFResnf5H5ULgbmcormQzRPShQvtDLMT38qcly6hBR2SOjEA1BxHDi3cZBy+YPMVx3UW1GaXnXuHSmUWgxjgI4jinuhc7F3GzHeOlAW7bA7VzORsTTlunqaOaHcVRIEYRpXVXXame8bkTXTcjczS0xeiodiELGdjzqIpFOZyTvXTvPKmVjrA57PPoOtRQY0pe9O81Kjk7RTyjWjIbbtsYp8EzAJPdrTjm0AEnkImj8BwrFuQ9uxcPQhGA+kRUshsqcM2v2qxsJAnrWmwPsDjLpzui251IY6z4DrVo3/D3EgCHSR4j0NaVtUl/Ikr0jJYTiRtsIJnbKNo6mra9h0uEO0qIlkiJPXrH1q6f2UxKJDoHOuuk+A5+tUWMwFy2M5V7YWSwddD17VT6tMjJScgfHcWyghIUfu0J9NqomxqsSSJ7zqT13obHYnO2hkDag5q0OJVkeMKWS6s3FVgwEHw/ius8ksplf2awG/g0HgJMiYqwtIAYAzdTsKlyR6vAJKsLz/ohRLcg5Spnaez5SJFSXwrEqzKNiuclR67b9TUOIIzQ5neDsCP6NR3MR2QGGZZM922x5c6yVtNjtJrOw23wa+qkm2IMEFSGB9CZoK8WU5WzJ36irHha3LZzW2YKYORtvMbeelWlzjVljkvKJ5yMy/yKOHI53fZ1/RmFwzsAVYk+Jj1q24Zw24NWYmeXL/3H7Vbrh0y5rWT/AEn4lHoaquJYm4WVTnUHNmKnsnaII1670fhj9pSVXRPi3W2QFRCYEmde8R94qvvWmJ7K6RyqBrJiAGgdaIN9lTMN1jT5VJ1ZF5lR22CB2gd+W4/7TofzWpZIYfDBmCsjcTBB2PdUFvirgdoKR0g/zHyoiwXeWyKBpoBp5k0XSVWP2SwySD3Uqga1OvvnXu1MEaHaOc0qHVApEfFeMF+ynZXYzu3lyFULMOWlel4jgdnEFRdXK0dm4pyyO+dNOh285rP8d9hr1gF0YXF74Vh5HRvL0o8MuNKlgrBxASAuGtDNDF856wugND46yLZzD4XKupHKdYozEcLdsq5lChVE77DaPWrLDYFDbW2/ay7E6Dw06UvJzxi0079pG7qyp4+UYWrhmXTlAmP/ADVclywN7cnlLkD0FbOzbUAAIIXQCNvCp2kiIWPAfxQj+q/8sC5lVUefXbmdicoUdFEAUwt0rZtwOydSsd+Zv5oHFcAtcruTxKkU0f1MG6dr8Dx5UZgsTSCnmNKMxfD2TXMrr+5WBHmNxUDKTAnSulNNWi21YxHHjUgWdtulM9xBgTNEvbKijXoADFbj2C9mmuXFuOpyDVdipII3/PpWa4bwxrjgAwJGsE+kCvbfZjh3uraqPEnr4iap4AWVvgmHR862UDn9WUTVmqgCoWuKOZJpJcqTHCrf5pXWFQWW1okisYHfSsp7dYX3uGdJjY6d2ta55qs4phFdCI3Go/qgsBeT5qOhNOI2rVe0fsu6Oci6Enb+ANKqcXwW6gWVOvKNqp2QtM5wK+EuBiJArTv7SWtmtlhHPL9IrLWbZTnqakBkFlExy/io8kreCEqei7v43CPlIsjn2SgA15yNiIqO1gbTvmRMgB1BM6kToJ6Caort0gAwPSrG3bdkUTBdZGvxLEkeI18jSNvzoS20M4jxQ/BaEAbt+o+H8/Su4Phl54JRoP6tF9Z3qvZHQsQSpAEmTrqBv50fgLb3SGLMUGg7RJY9802KwNiMftLbC8HdCDKgc4OUn5UTicLpGYHuIn6RVTxK/k7C78+gHSq+wxU5wSI/1E/gpWlRG7Vt5LNbiqSHtso/enaXzESKbjcIwUusMn7l5eI3FRni6sCHSD+5fuKbwy8yucp7J3E9kjvFTaZmm2lQIjBdY1pf5jkZcxC9BpVxfwaFiVAK9QDoenWgb+EAIjQc6ykhNXewMR1/+NdqX/FH719aVUtlb+EbjD4xz2ECvqTBMNJ8enPXWoXt3r5uEsC9sAFDoecRpGXQiabibahlVdGAhehjl4kDTwqfC4wDJftkOFlXg7odxH7hoYNcUoNtha06wBe4sXlNpLrWrwkgtBDxuB+AjvqbidtWZ7cDs209CWH2qI2cM94XUzK2bORoQTrOnLXXTnRLYqSS4WZYKyg/AYOV++Z128J1rFwqkLJrwVXB75jI9xGI0IzZXHcZ0NQcZ4G7dq07T+ws0Hwk6Hu2qk4/Zy3mj9UH7faucM4rdstvmQ7qTPp0NdEYquyHjBtdkK5wjED40c+RaoBhCpOZSI6gj61o+IcUcotyxdYLoHQxKnlofT0qtue0GJj/APr8l/iqpqi0LrCK0IhMbRyqb/E0nMAsc6dieJO4gux6/gFMw+My6b+Na2Nk4+JYKAsDvrmGtM7gSSSRtUl9weS+VW3slhWe6GC6KfGmTvQxseB8IRSsL2q3VizlWJ151X8LwwUZoMmrORFMtGsSoBUirQ/vKlD1jE9s0UjVX56ntPShCyKGupUyvTHcVmYqcVggdY1qmucNXOCVBg8/Q1q2E0HiLHOla8oZPFM8P9reGHD4hkA7L9pP9p/iq2AlsnnIA8pJ+1eoe33CfeWA6rL2zPflO9eU49SQoHLWPH+opJLKRyyjUsBWFwr3vGYn6+VXfEEW1ZAnWAqk7gDnU/BcJkRRBJgTAknupmK4biHBdklyTlUEDKsQBqRqdzQ62I2nLeCme4txDI7X6vDSDFEpdW2qKDroAByncmknCcUoANrYyCGSe8b7a0zH8NZSGghTuCPh89opaaBJJ6Htw+e0x23J5ryPjy8qqcXigxhR2ZgHr31psIwdQDqCIPeCINZu7wZxcyKM2pjXXSjFpXYvGo57DbTAwNz3cvGpswzAsTDAzlgHltNDWrcNO33oh15np9T/AFQe8DylbSRa4lzbtqyao5A7QGcQDsw1Ex4aCgDecnRmK8p6d/fyqyxaj/GRf9Q8dmn61VXbbAf6BsQTofGKRUzKKkv9kkJ+pgDz0I+1KgLigknMfWlR6/LG6RN5xgwruNwsjxGvyrPYkug9/ZJUtkL5dm1kNHIyAD495q9xOIgOjDUqQDykg6/SqrD9hVBMgFpUCcykarrA1pIzim8+dB45V9rDOA4ZsYrtCoVMEicrGJ25Hw07tal/wLiNkcEb66MCBzHPmOm9aD2aS2lke7BCGW11JnaTG+gFd4opuIQGKmRDLupBDDykVycrVt+LEl17FBiuESpFxSFYaOBJU+unhWR4jwt7J7UlOTrqp8/0nuMGvYM6somCrDnr4is7xfBGxLpJT9Q3yg9QdCvcapxcsoY2gxm46PNrVzIZDTIIIOxBrhtgxO3dWoxnB7F9c1oi0/QSbbeW6Hwkdw3rOX8O9tirLlI68x1BGhHeK7o8kZaeTojJNHRZGWQIHWkEXfmOpioizaEnsknbcR1prqI+Km+GNRI5UEED616L7DYMBM5GrenpXnuGw0yM2lep+ydvJZQaHSdPvTxaukBppGpRqczH/wACoEv0y5epmwJD3uVKl6eflVHxDHBFzMwAHXSoeC8at382RpK/EOY746UAmmV++iUbSq+0aKR6wQv3sbmo2ug1leP+1FnDuEdjmIkgawJiTRmA4ql1QyOGB6VnYEaK001I61X4a+OtGrcB2oILAMckhhvIryjE8Pt2MSVNvPmGYEv2QBpGSOWg1Jr1jEtXnPtvmVc6rtoT0DH+q0tEuVWgP/8AIDnKIFCIpZ2g7DksR4VTH2lxLmEEk7KqZj9/Wh7QRLPbLTcIZgu5QHsieQJ1ojB8XcCLaJbTookk97Hept0snO0ktFxgLOMIm66rPIhJ9Av3p2KwRac+JGU/pyKB4Saz3FeIPAXOSTq0nl/dTcH4ajtmuEBFGZvDkPE/zQsVp7DMNgHtlmtEOh32EHYwZ1qdLgDO5La9nYwunUDc0Jxb2iZuxZARBoCBqQOnJR4a1VNeYgFWbMN9Tr86nNN/wZptNvwHYm/YOg+jfUihEdDoswD+b02zbF2VJhuR0GbuI+4qNFKkrzmtvHkDjUbW2EYvGHQAfDMHqYkiPIUQuKhIZcjxJk7g+tAXdCgHX+p+dctRBVgZb6jan6pJI6eJx6pSG+6U7N6qftNKuf5BXQpMeIpVqfsb6cTV3Lqskn4jmPn+CqvAYlnfYDQxHUwPvROFJLBTsZjxGtS8Mw3/AOygC75p6CBP8VxWs+6IxqnZsbarZsCToiyfITQ3s3i1v2nUiHmSO5tUYd3Lyqq9psdKMg8D38/p9ar/AGTx2Rwyxp2W71OsT3HXwoKC5INhhG0/ZoMTins6ABg3IzoRzH5ypuG48JIdJQ8t48J5d1O4+6wx1A0Om/l41nUxYPIeBKz8zUuOMqpP4JSdMWMwiK7PYZgp1FvQZT3d1RnFW7g93dQjoSCIJ/a2wNFqwP6SPAyK5lnSnlLSaz7Ww/U9oz9/hTo8AZlOxHMd/Qipzwx2C9lFyiJ1M+laBLB56U68QgJC5iOQifnV1y8tK6Xyx/rSeimXgbNHbExrAMVueCJktonMACsCeJM91A6FAh21BPy1rY4THZzOo0rs40+ttl4tvbLsOwPWo8bfyoWI2FMB6ny/mheJwyMNdQfwTTIoebcd44+IbJsoYx3+NSexuLNrF2zm7L9lt9jtI8QKpcRZKuw10NbD2F4Eb7m43wWyIPVgZ9KslgRs9Stmp7bVDbw5lascNgoJPWhQbweD+07u+LvZ2iGZR4KTlFQ8D43cwz5VIKFu0Dz5TNbr/iL7LsgOItZihJNxRusx2uuX6V5phMOWuoBr2h300lgyPbcFi8yqeRA0mrTD3zI6VTYZCEAYToKNw2u3z+k1z+RwzFPHzrD+1d5RbZW2Ig+daPjeNCIzHlXlntPxQuwynsj51WKsSQDirud9pkgDuA0FF3CtpRzOyj8+dAcPvR22+FN+rHkv5yqG7ea48ncmAOQ7qhKOf4OdpvD8BeAsliXbXXnzNFcWxOVcinf4j+d3y8alJW0nUgaDqaqbt7ORmgHYnr3mlTbyCKcstjUWQO77VJhtHjrp6/3XLaEDeuG4C2bmDsOo1obtGcatfJ1QUaQYynSj/wDORj2tJJ1jQdxobFsuY6d9DOw6Vl7BTaplheA0OUdzCaGTD520Uz1qO2zLuSFJ56jy76KbiOSVRY/1NqfSjTsDUlgsk4bpqR9aVU3/ADFv3H5Uqbqhvpy9mhTDuxlFJ39CCN/OrXheGdXV3AzBSNOp0mavreEyjVlXyFMuY3DJ8d4E9xn5LXMuKNZFvFFTc4OGYl3BkkwTGp8KgxXCSiSgMSu4gQu8SB3yatLvtJYT4EY+QHzOtVvF+I3ntkQFL9lVEsdf3Nv6daooRS+00ZNPY+3ezoykgsAY136UA+JzKBlA6+P28qgwynKFOjrzB2011HQz5GmWs7MVVVkGCTMCuV8b4284YJxaSYbaSdPpRFtBJA086oOJl1YFWYkbwYy+lcs8cujRirjowk/+4a1fhhFx7IaPC5RtMt8T7w6A5f8AbB/uoUzDcyesEH5VxOO2To6sv/yHkRrRFviGGbRbyeDHKfnWnwSksMVwlHaK/G4u4o1shx1Bn5RIqP2e4t2whjXx5cqvv8cH4TI7jP8AR8qBxXCEY5suVv3Lof7rcc/pLrKP5RSE0jQtf0mfKdK6cUsa6+H2qhW66L2zKj9W3r0pHEgjQg/nyq0ZqSuLtHVFqSG3/ZpL75gWUHcCJrdcHwqWUREWFA8z3nvrIcJxcXADz0862ittrV4StCyRd4Rh0qztEVUYW6g3o+zilFXEQsXZDKVOoIIg9DXmeI9k7eHve8UMBMgSI+m1em3cQp2PKsV7SY0FoBnrFS5HSKRyye1iFKxqPtU+FuQJ3HdWfwt6REyN4/imcY46lhNW7TbAbxtNTjchpYKv294sgVUUySdRyjv6VgrrZqjx2KNx2cmZJ+pj60rbSK6IqiTFauaZSNJPr+CjsBlDZiQIk6+lVraGiZHKocsQOqYXiMRnJJMD9I7qiOHBEzUJfQ6a08XRBXumo01o3VdevkelsqDpOhoe0I3p5YiMpOo1FTjDsdYBmi3RLrIge5qPCmZwZiafctNm1EH5VZcO4cd30HIDc/nSikqwO4xislarsRBOg2FEvYVnYGREdOgqxx7Ii5VUBj4SO+oFwqu7guZ0003gTvvrWrIkfuTb+Cv/AMNeortWTcJH7/lSrdZew94+wi27652Zo6kmmESdaeuoHf1rrGB3fWuPbbZKcrkyWwqGM5K6jXSDVxcQNJmdCBzidKqbVnMR1+Q/urfDgfCOW56fyapBN4EK7C4ZlfXLlgg6kSCIiKOuQi9mJPlJoTH4pS+S2snZmJ7K6bd7VX4yw5IJJOUDNucszH/mo8vG5SSegy7daonuYZic2mu9CXMFA0UR+c6dYzD9RjuM1ZWgCIPaB3BFBcj43nQsORpmPxbQSBpQDNXorIiz2Fg8oFPwHs3g8bNv/wBPf3R1+Fo/SybTzkQa7OH9XGb61XydMeVSdM82W4R8JI8CR9KOtcaxK7Xn8zm/+00f7SeyGKwRm6kpMC4uqHpP7T3GqCuvDLUmaCz7VXR8aow8Mp/j5U67xNQA9uchPaQ7qxGg/wBpgwe6s4acCfXep/SgnawZRSeDS4LionUwe7l51vOE8XD2wdZG2u8c68o4bg3u3UtIJZ2CjprzPcBJPhW59tr6YQWMNa0KqGJBgxqBPexzGg/tdRG3s7j/AGnxll4dFIH61BIbv308KantnjMQRbtKATzG/qdhVTheNqR2nPeGEzRI47ZtSy6seSqF2213plKXoPVG3w2L/wATDkXLpe65lmJJ1IgASZCj+etZfG8bQSSR661keIcZe6Zbw8qq7lwnck+NFx7bAnWjW3/aVUYZNQZB5RMR96zONxj3GzMxPSem9C05RTxjWgMepqRORqJF1olV3p0KyO9U6IxXMBp1qC5U2EvwD06VPkWAP2TMIEmukSoIHjQpJYyaK94QI566VztUSTu7ZGGKnajMPfG+u+o7ulBq4599Pw6hnCrufKP/ABQasdXHN2WNu0HbPMjeBoJHKjbzlRpE9TsKmw+FMaD+KbicVata/E/Qbg+fw/WilSpEJOU5YK84CTLk67k7+nLzjwqvxL5mYxBzGPWj8Pimds7fCpnKNhGsnrtvR2DtW8oYqrTzgfeikVX2Rzspv+ZsNifWlWh/5lZGmTboq/Y0q2PZLuvQK1cUZmAH531GHnXyFWOBwpXVh2jy6VxRixZKgixZygAev3pvEMWLaZV+I/k+NS4m6qKeZPzP8VTraa4+Ztvz5Ve6wtip1k7w0dtZ6ifHerX3pS8WaMhUg7SQd9NzG/lQtiyZBUaA+p7ugpYjAu7Bj6UFF0GLp3snx2DVhnAgjeDBI69JgigbVyPhJ8DFGnsFXBkGEeOTfpb7T3UDfK5jB9OVR5Ym5EkyxW5KlokDQxyPQiqS8GLrfwt2WRgwWYIKmdtPQ1c8IxSq8XBKN2X71PPxG/lWd9pOEMl9jZPvEOoZf61B/ut+milK7p/0PxJez3ThnEUxWGRnUFbi9tGGx2ZSO4yPKvnnjuCFnE3rQ2R2C/7ZlfkRXoX/AAq4u3/Vw7s0rDLmJmDowg9DB/7qzH/EHDZcfd6OEf1UD7V6cfk6Y7oy6WyaKTCE7VJZXoKJRXJCr8TEKo5liYA9SKavY1l97G+6wjjE3wYKstuBIzSQ5PMEAR4M1Zzj/EGxOIu3j+tjlHRRoo9APOa0XtqqW1w+EQybKTcYc3fX+W/7hWQfTWpwTa7P/kZOzgt1y6Kf/kDpUbvNOkwkZrlIiktEx0V2nGurTAHoaIA0qBV59KlamAQuaYpqRxvXFsOUZwsqpAY/tLbSNwDETtIjelZiww+HOXMfwColupmhwxE7qQCPIjX1FJMSxTIPXuqHDJLQdgCT5VzuKTIuL7Nssr/CZX3lphcTmQIZe5l3FB2MQbZ7KjN1OpjuorhWIa04ZGVZ0OYwrDoZ+vKi+NcPAYMgOV9fd6Eo3MDquoIjkdKVPNDqFOmA3MdcYdpz4DQfKo0w5Mafn2q7wvBSACwljsOQqPiSraWB2mP5J6KOQ51mnYsp5qCBcO5AKKoM6MdZ35a6f1U64IwTJH3oSxiMg7IBY7lthQ17GO8hnzfIHypVbQnaTQbltj9Y9f4rtVeYft+dKjSB0XsvvdZ2CgmCd+izJP51q4xOIW0mdvADrVfw64qoHbsk9kBtCddh+cqE4mlxyjXEYZjCCDp686Tjh4Y/03J50gm25uQ7aA60datzoPhHzqG1bAAUawPw0bZSBSJZbOeTt4CEUaQNfkKG4njVtrAMu238nupuNxy2xAMueX891VGGQsS79pjtTuVKlsDdB2EJgiYzgrvGvxD7jzqDD4YMMyjSYIPI9KKu2ngZdYgzyBEH0ofEZrV8lSuR9SCdDP3BqbS8lK7RXwSpaXp6HaibdsfmtQMrkyV1iDEa+OutS8Kv/wCPe96Fk5SrK05WBjl103qX2PaJqrDMMrI4dCAw0mNYO4objuBOJcXHaHChZAEEDqPOgeOW7l6612y5thoJQE5QYgx0nfaoePYu8q2XUlSbYDhds6kgk+O9V4kr+yX4LRT8MBxPB7qa5cw6r/G9WHs8i2Q2MuDS3ItLzZzpPlt6nlQXDMXfuNHvXCjVm00HTxNM41xg3WyL8C/D3nm35966XKUn9N/lr0XXbyBYu8zu7sZdyWY95+3KgLgmiiYFMZK6aGBClcC0YbelRlIo0awfJXAtThK4VitRrIstdWpCvOuMvOsYkt8qdcrlkaU9toomIHFG+z/EFs3ld1z2mBS6n7rbaMPEaMO9RQJonA4C5cnIjOBuQNB50raWWZ6yE8SwBs3GSQwUyr7h0OqMOuZYOnXuoW0g1mde6tnw3hwuWfdYlCuSfd3RDNbB1KssyyTrHKTG9ZvinDGsuUd0B3U65XU7MrRBB7qjJxl+1gjTZFbWYWNDoJHM+Va3A4MW7agkMyzr+3bQHpvWb4Hbh8zEFUEiCCJ/rX5UVxDibMuUSF7RIG5mIn5+tRk6aSJ8s3fVBeO4wqNCgueswN9gfyIqBL2Hvg5v+m5/Vvr3xv5xVRh7+aVgEEE5SByE7jWdBzmp+FLbdwBmVuQJBXyMT6+poNUrA4qMcbIOJYYoQpIM7FTIYDmDQ1lPGrPi+GIb4CfDWJ11HKqz3+WQQT0nSmjlDcUUo3IdHca7UWduppVsD9IlxxG+C2ozAmAytqCeWWNNpqxxF0sE10AzZQSQCRBmeY6VTpCs0jOu4nQ6dGFH2bZgQd9dd476nyySWGbklUaRYYDae+n47iCWxBPa+njQjYjKMq79elVtyyrAlpmdBGh7/GkhJaORRzkeiF21OYnUk1f4SxEc25CqO05XbervCYuEZsuZwNhz/ilUknkndsk4rihbQqDLNp/fhVYmIJienTzoYuXfM2pPoB0onCNnLyJ7DRGkEREeVLyPtgMX2fVMnVQdfvRiGBv9xWeOCdmJW6wU8uY7qtbLBFCklo6n61zzj1rq8hpLyGgIe491SnC/hqCywIJgGOQoLimLvpla3lySMwidOvhypuOLnLq1+RorsPxvDiUZEOTNvAgN3Gsni8K9s5XWDyPI+BrYnipVA7pIgFsvKecGpGxWGvLkZl15Np5gmu3jlPhw1a/ssu0dow5bT8509Wqw4twN7YLoc6dRqV8f5qpR67ozUlaKpp6J3Gw/OdNK1wvSL04TmXWPz81ppGsfmtODaz1prHtd0VjEYGkUqcTqRTTWMS2xpSmo1NKaxhMutabA3riYUJajM/kdSZM/7QPCsyTV7ZvsLaKm5XUjkB/Nc/Mm6S9iTt0l7LXheKuIcvvGZuesrJ5Sd65jsUqwtxFKSTARWA5kqpETz0jxp/B8AQdsum/d+Ch+KW1zFjsHVeoAIjTzYUriFYZfYbgFl7SsgKh1DdnKsyB4iPLzqsxfsxhp1xDq3RmQ/KAfSnYrjDWkQKNV0hWZdIHf3mfKgeNXCqKoZVdxnOQR2T8In60itvCBBX93srsXg8PbaRiS8R8Ka8/1EgdOtOsXsMrKVtuWEQc4GvWF5VWNaggEHTeedDhwpOUnup3H5LVFZNE1+5fcslu3IKqCykkkwN51I0onitxhe/xrbBimjEIozOBMLI0A15zvS9ncTkt5zEgOROxY9lZ/+3/aaq7sKCxeCxJBJYFz1JGqrt3mRtNS80iUpN4Qldzrn9AT85pUP/m3f3nyuKB5CaVHoHsw/wB2GPw5SDyOnpRSY33bhioZRy60qVcn+SEG424urKCAxkDnFVllizkAmABvSpU8NMSWmWFq2BvTsBiiLncdP4pUqm1cXZyPwWOLwYMldCdxy8RQxstbKbRrMcz30qVT4W3B2UjhuvR0vQtzEco0pUq0EiZLankasLSzv/RrlKt/kiixodct8uv0rKcVweRoHwnVe7urtKvUg9HorQHh8TctnsMV8DofEbVBcvFmJIAnUgCB6UqVWpWKJXpzb+FdpU6AcY1zNIpUqxhFpqOaVKsEcDFOY0qVYxLhrJYgCvQeB8FEAnw9NKVKpT/cgeS1xeVFYgRpXnmJ4gS7LGlzQ9xUypj0HgaVKs9BDeJWFcqXJyqJIE6zGn0HnVXi8Wc5LElt+g7gO4beVdpVNA4v2jLlokFjEdmI217qdhMRCshRHDbSACpPMGOU7UqVCWFgXkei1xFxUsjLyA0jflqfzc0DjcOty37xJBQAsra/GSZB56z/AFSpVOHsSSqijpUqVWHP/9k=',
                                    width: 80.0,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pandy',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 8.0, 0.0),
                                        child: AutoSizeText(
                                          'Można się z nimi utożsamić, cały czas jedzą',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('pandas');
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        fillColor: FlutterFlowTheme.of(context).primaryColor,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('start');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
