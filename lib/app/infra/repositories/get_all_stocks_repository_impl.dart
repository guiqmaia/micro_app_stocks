import '../../domain/entities/stock_entity.dart';
import '../../domain/repositories/get_all_stocks_repository_interface.dart';
import '../datasources/get_all_stocks_datasources_interface.dart';

class GetAllStocksRepositoryImpl implements GetAllStocksRepositoryInterface {
  final GetAllStocksDatasourcesInterface _datasource;

  GetAllStocksRepositoryImpl(this._datasource);
  @override
  Future<List<StockEntity>> call() {
    return _datasource.call();
  }
}
