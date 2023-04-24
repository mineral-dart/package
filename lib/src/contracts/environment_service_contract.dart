import 'package:mineral_ioc/ioc.dart';

abstract class EnvironmentServiceContract extends MineralService {
  EnvironmentServiceContract({ bool inject = false }): super(inject: inject);

  /// Map including all environment variables
  Map<String, dynamic> get data;

  /// Get environment key from .env file as [T]
  T get<T> (String key, { T? defaultValue });

  /// Get environment key from .env file as T
  T getOrFail<T> (String key, { String? message });

  /// Check if environment contains key
  bool has (String key);

  /// Delete key in environment
  void delete (String key);
}