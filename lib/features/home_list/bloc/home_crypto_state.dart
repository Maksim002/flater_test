
part of 'home_crypto_bloc.dart';

class HomeCryptoState {

}

class HomeInitial extends HomeCryptoState {

}

class HomeLoading extends HomeCryptoState {

}

class HomeLoaded extends HomeCryptoState {
  HomeLoaded(this.cryptoCoin);

  final List<CryptoCoin> cryptoCoin;
}

class HomeFailure extends HomeCryptoState {
  HomeFailure(this.external);

  final Object? external;
}