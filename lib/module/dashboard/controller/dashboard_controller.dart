import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../animation_from_state/view/animation_from_state_view.dart';
import '../../cart/view/cart_view.dart';
import '../../checkfield_with_remote_datasource/view/checkfield_with_remote_datasource_view.dart';
import '../../counter/view/counter_view.dart';
import '../../dropdown_with_remote_datasource/view/dropdown_with_remote_datasource_view.dart';
import '../../enabled_or_disabled/view/enabled_or_disabled_view.dart';
import '../../http_request_loading/view/http_request_loading_view.dart';
import '../../map_with_remote_datasource/view/map_with_remote_datasource_view.dart';
import '../../multiple_selection/view/multiple_selection_view.dart';
import '../../navigation/view/navigation_view.dart';
import '../../single_selection/view/single_selection_view.dart';
import '../../theme_changer/view/theme_changer_view.dart';
import '../../timer/view/timer_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuList = [
    {
      "label": "Counter",
      "view": CounterView(),
    },
    {
      "label": "SingleSelectionView",
      "view": SingleSelectionView(),
    },
    {
      "label": "MultipleSelectionView",
      "view": MultipleSelectionView(),
    },
    {
      "label": "CartView",
      "view": CartView(),
    },
    {
      "label": "AnimationFromStateView",
      "view": AnimationFromStateView(),
    },
    {
      "label": "TimerView",
      "view": TimerView(),
    },
    {
      "label": "EnabledOrDisabledView",
      "view": EnabledOrDisabledView(),
    },
    {
      "label": "HttpRequestLoadingView",
      "view": HttpRequestLoadingView(),
    },
    {
      "label": "DropdownWithRemoteDatasourceView",
      "view": DropdownWithRemoteDatasourceView(),
    },
    {
      "label": "CheckfieldWithRemoteDatasourceView",
      "view": CheckfieldWithRemoteDatasourceView(),
    },
    {
      "label": "MapWithRemoteDatasourceView",
      "view": MapWithRemoteDatasourceView(),
    },
    {
      "label": "ThemeChangerView",
      "view": ThemeChangerView(),
    },
    {
      "label": "NavigationView",
      "view": NavigationView(),
    }
  ];
}
