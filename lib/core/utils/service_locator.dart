import 'package:bookly_app/features/home/data/repos/home_repo_implemenation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';
final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.resetLazySingleton<HomeRepoImplementation>(
    instance: HomeRepoImplementation(
      getIt.get<ApiService>(),
    ));
}