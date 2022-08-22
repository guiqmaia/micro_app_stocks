import '../../domain/entities/stock_entity.dart';

abstract class GetAllStocksDatasourcesInterface {
  Future<List<StockEntity>> call();
}
