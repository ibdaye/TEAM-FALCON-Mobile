import 'package:get_it/get_it.dart';
import 'package:how_to_recipes/core/services/key_storage/key_storage_impl.dart';
import 'package:how_to_recipes/core/services/key_storage/key_storage_service.dart';

GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator({bool test = false}) async {
  // Services
  


  if (!test) {
    await _setupSharedPreferences();
  }

  // Utils
  

  // External
  
}

Future<void> _setupSharedPreferences() async {
  final instance = await KeyStorageServiceImpl.getInstance();
  locator.registerLazySingleton<KeyStorageService>(() => instance);
}
