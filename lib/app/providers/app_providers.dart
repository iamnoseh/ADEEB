import 'package:adeeb/core/network/dio_client.dart';
import 'package:adeeb/core/storage/local_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dioClientProvider = Provider<DioClient>((ref) => DioClient());

final sharedPreferencesProvider = FutureProvider<SharedPreferences>((ref) {
  return SharedPreferences.getInstance();
});

final localStorageProvider = FutureProvider<LocalStorage>((ref) async {
  final preferences = await ref.watch(sharedPreferencesProvider.future);
  return SharedPreferencesLocalStorage(preferences);
});
