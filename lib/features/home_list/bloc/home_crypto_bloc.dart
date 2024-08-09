import 'package:flater_agent/repositories/cripto_coin/crypto_coin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_crypto_event.dart';
part 'home_crypto_state.dart';

class HomeCryptoBloc extends Bloc<HomeCryptoEvent, HomeCryptoState> {
  final AbstractCoinRepository abstractCoinRepository;

  HomeCryptoBloc(this.abstractCoinRepository): super(HomeInitial()) {
    on<HomeLoad>((event, emit) async {
      try {
        final cryptoCoinList = await abstractCoinRepository.getCoinList();
        emit(HomeLoaded(cryptoCoinList));
      } catch (e){
        emit(HomeFailure(e));
      }
    });
  }
}
