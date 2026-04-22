import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'note_deeplinkflutterchanges_model.dart';
export 'note_deeplinkflutterchanges_model.dart';

class NoteDeeplinkflutterchangesWidget extends StatefulWidget {
  const NoteDeeplinkflutterchangesWidget({super.key});

  static String routeName = 'note_deeplinkflutterchanges';
  static String routePath = '/noteDeeplinkflutterchanges';

  @override
  State<NoteDeeplinkflutterchangesWidget> createState() =>
      _NoteDeeplinkflutterchangesWidgetState();
}

class _NoteDeeplinkflutterchangesWidgetState
    extends State<NoteDeeplinkflutterchangesWidget> {
  late NoteDeeplinkflutterchangesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteDeeplinkflutterchangesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'note_deeplinkflutterchanges'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Deep link flutter changes',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.montserrat(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'SubCategoriesScreenWidget\n\nadd json code in public.html/apple-app-site-association \n\nhttps://www.quickart.ae/assetlinks.json\nhttps://www.quickart.ae/apple-app-site-association\n\nalso in public html/.well-known/app-stie-association\n{\n  \"applinks\": {\n      \"apps\": [],\n      \"details\": [\n      {\n        \"appID\": \"7993YB4PTL.com.quickartcustomer\",\n        \"paths\": [\"*\",\"/SignUpScreen*\",\"/product-details\",\"/all-categories\",\"/subcategories-product-list\",\"/search\",\"/additional-categories\",\"/dashboardScreen”,”/brand-product-list”,”/occasional-product-list”,”/top-selling-product-list”,”/recent-selling-product-list”]\n      }\n    ]\n  }\n}\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    'Replace --->\nclass _SubCategoriesScreenWidgetState extends State<SubCategoriesScreenWidget>\n    with WidgetsBindingObserver, {\n\nReplace init state\n @override\n  void initState() {\n    super.initState();\n    WidgetsBinding.instance.addObserver(this);\n    _reloadPage();\n  }\nreplae dispose\n\n\n  @override\n  void dispose() {\n    WidgetsBinding.instance.removeObserver(this);\n\n    super.dispose();\n  }\n\n\nCreate reload  class\n\n//Page Load bacome in foreground...G1\n  @override\n  void didChangeAppLifecycleState(AppLifecycleState state) {\n    if (state == AppLifecycleState.resumed) {\n      // App has come back to foreground\n      _reloadPage();\n    }\n  }\n//Page Load setup...G1\n  void _reloadPage() {\n setState(() {\n      //Add initstate code\n    });\n}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    'searchResultScreen\nadditionalCatScreen\nbrandProductListScreen\nOccasionalCategory\nproductDetailsScreen\nsubCategoriesScreen\ntopDealsScreen\ntrendingproductsscreen\ndashboardScreen',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    'Replace --->\nclass _ SubscriptionOrderProductsWidget extends State<SubCategoriesScreenWidget>\n    {\n\nReplace init state\n @override\n  void initState() {\n    super.initState();\n\n    _reloadPage();\n  }\nreplae dispose\n\n\n  @override\n  void dispose() {\n\n    super.dispose();\n  }\n\n\nCreate reload  class\n\n//Page Load bacome in foreground...G1\n\nadd bellow code in manage subscription btn line no --1246 \n  await context.pushNamed(\n                                                        SubscriptionOrderProductsInfoWidget\n                                                            .routeName,\n                                                        queryParameters: {\n                                                          \'orderPrice\':\n                                                              serializeParam(\n                                                            widget!.orderPrice,\n                                                            ParamType.String,\n                                                          ),\n                                                          \'orderDate\':\n                                                              serializeParam(\n                                                            widget!.orderDate,\n                                                            ParamType.String,\n                                                          ),\n                                                        }.withoutNulls,\n                                                      );\n                                                      setState(() {\n                                                        // reload your API / data here\n                                                        print(\"reloading data---->g1\");\n                                                        _reloadPage();\n\n                                                      });\n\n\nSubscriptionOrderProductsInfoWidget\n add line no :- 111 &  328 for back and close btn\n // context.goNamed(\n                  //   SubscriptionOrderProductsWidget.routeName,\n                  //   queryParameters: {\n                  //     \'orderDate\': serializeParam(\n                  //       widget!.orderDate,\n                  //       ParamType.String,\n                  //     ),\n                  //     \'orderPrice\': serializeParam(\n                  //       widget!.orderPrice,\n                  //       ParamType.String,\n                  //     ),\n                  //   }.withoutNulls,\n                  // );\n                   context.pop(true);',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
