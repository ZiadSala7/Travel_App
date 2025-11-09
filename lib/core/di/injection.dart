import 'package:get_it/get_it.dart';
import 'package:travel_app/core/databases/cach_helper.dart';


final getIt = GetIt.instance;
setupDependencies() async {
  // SharedPreferences
  final cacheHelper = CacheHelper();
  await cacheHelper.init(); // ✅ MUST INIT HERE BEFORE REGISTERING
  getIt.registerSingleton<CacheHelper>(cacheHelper);
  // You can add API service, Database, etc.
}
