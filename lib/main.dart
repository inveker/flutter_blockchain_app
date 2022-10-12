import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blockchain_app/app.dart';
import 'package:flutter_blockchain_app/bloc/app_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final hydratedBlocStorage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const App()),
    storage: hydratedBlocStorage,
    blocObserver: AppBlocObserver(),
  );
}
