import 'package:micro_app_stocks/app/presenter/ui/home/stocks_page.dart';
import 'package:micro_core/micro_core.dart';

class MicroAppStocksPageResolver implements MicroApp {
  @override
  String get microAppName => '/micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/stocks': ((context, args) => const StocksPage()),
    };
  }
}
