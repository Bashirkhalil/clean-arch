import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  get isDeviceConnected;
}


class NetworkInfoImp extends NetworkInfo {
  final InternetConnectionChecker internetChecker ;

  NetworkInfoImp(this.internetChecker);

  @override
  get isDeviceConnected => internetChecker.hasConnection ;

}