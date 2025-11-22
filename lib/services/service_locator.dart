import 'package:provider/provider.dart';
import '../repositories/local_fs_repository.dart';

/// Service locator setup for dependency injection.
///
/// This provides a centralized location to configure all providers and repositories
/// that should be available throughout the application.
class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();

  factory ServiceLocator() {
    return _instance;
  }

  ServiceLocator._internal();

  /// Get a list of providers to be used with MultiProvider at the app root
  static List<ChangeNotifierProvider> getProviders() {
    return [
      // Add your application providers here
      // Example: ChangeNotifierProvider(create: (_) => YourProvider()),
    ];
  }

  /// Get a list of single-value providers for repositories and services
  static List<Provider> getSingleProviders() {
    return [
      // Provide the LocalFsRepository as a singleton
      Provider<LocalFsRepository>(
        create: (_) => LocalFsRepository(),
      ),
    ];
  }

  /// Combines all providers into a single list for MultiProvider
  static List<ChangeNotifierProvider<dynamic>> getAllProviders() {
    return [
      ...getProviders(),
    ];
  }
}
