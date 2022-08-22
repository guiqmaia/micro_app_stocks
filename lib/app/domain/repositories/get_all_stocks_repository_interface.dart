import '../entities/stock_entity.dart';

abstract class GetAllStocksRepositoryInterface {
  Future<List<StockEntity>> call();
}
