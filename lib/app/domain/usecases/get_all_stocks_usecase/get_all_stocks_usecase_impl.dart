import '../../entities/stock_entity.dart';
import '../../repositories/get_all_stocks_repository_interface.dart';
import 'get_all_stocks_usecase_interface.dart';

class GetAllStocksUsecaseImpl implements GetAllStocksUsecaseInterface {
  final GetAllStocksRepositoryInterface _repository;
  GetAllStocksUsecaseImpl(this._repository);
  @override
  Future<List<StockEntity>> call() {
    return _repository.call();
  }
}
