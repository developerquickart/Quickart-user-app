import '/backend/api_requests/api_calls.dart';
import '/components/bottomnav_bar/bottomnav_bar_widget.dart';
import '/components/brand_widget/brand_widget_widget.dart';
import '/components/order_again_list_view/order_again_list_view_widget.dart';
import '/components/products_list_view/products_list_view_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'dashboard_screen_widget.dart' show DashboardScreenWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class DashboardScreenModel extends FlutterFlowModel<DashboardScreenWidget> {
  ///  Local state fields for this page.

  String? selectedPage = 'null';

  bool bannerLoad = true;

  String searchType = 'search';

  String dashboardType = 'dashboard';

  String trialType = 'trial';

  String offersType = 'offers';

  String bannerTypeRefer = 'refer';

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (updateproductdetails)] action in DashboardScreen widget.
  ApiCallResponse? apiResultCartCount;
  // Stores action output result for [Backend Call - API (seosource)] action in DashboardScreen widget.
  ApiCallResponse? apiResultSeoSouDashboard;
  // Stores action output result for [Backend Call - API (appinfo)] action in DashboardScreen widget.
  ApiCallResponse? apiResultso1IOS;
  // Stores action output result for [Backend Call - API (appinfo)] action in DashboardScreen widget.
  ApiCallResponse? apiResultso;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Stores action output result for [Custom Action - generateReferralLink] action in Image widget.
  String? refCodew;
  // Model for productsListView component.
  late ProductsListViewModel productsListViewModel2;
  // Model for orderAgainListView component.
  late OrderAgainListViewModel orderAgainListViewModel;
  // State field(s) for Carouselsecond widget.
  CarouselSliderController? carouselsecondController;
  int carouselsecondCurrentIndex = 1;

  // Stores action output result for [Custom Action - generateReferralLink] action in Image widget.
  String? refCoder;
  // Model for productsListView component.
  late ProductsListViewModel productsListViewModel4;
  // Model for brandWidget component.
  late BrandWidgetModel brandWidgetModel;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 100;
  int timerMilliseconds = 100;
  String timerValue = StopWatchTimer.getDisplayTime(
    100,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for bottomnavBar component.
  late BottomnavBarModel bottomnavBarModel;

  @override
  void initState(BuildContext context) {
    productsListViewModel2 =
        createModel(context, () => ProductsListViewModel());
    orderAgainListViewModel =
        createModel(context, () => OrderAgainListViewModel());
    productsListViewModel4 =
        createModel(context, () => ProductsListViewModel());
    brandWidgetModel = createModel(context, () => BrandWidgetModel());
    bottomnavBarModel = createModel(context, () => BottomnavBarModel());
  }

  @override
  void dispose() {
    productsListViewModel2.dispose();
    orderAgainListViewModel.dispose();
    productsListViewModel4.dispose();
    brandWidgetModel.dispose();
    timerController.dispose();
    bottomnavBarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
