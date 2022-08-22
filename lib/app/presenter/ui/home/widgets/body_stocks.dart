import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:micro_app_stocks/app/presenter/ui/home/widgets/replacement_home_page.dart';

import '../../../../domain/entities/stock_entity.dart';
import '../../../riverpod/stocks_provider.dart';
import 'list_view_stocks_home.dart';

class BodyHome extends HookConsumerWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<StockEntity> stocks = ref.watch(stocksNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stocks',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Visibility(
          visible: stocks.isNotEmpty,
          replacement: ReplacementHomePage(stocks: stocks),
          child: ListViewStocksHome(stocks: stocks),
        ),
      ),
    );
  }
}
