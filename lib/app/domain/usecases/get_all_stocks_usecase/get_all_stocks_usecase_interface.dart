import '../../entities/stock_entity.dart';

abstract class GetAllStocksUsecaseInterface {
  Future<List<StockEntity>> call();
}
