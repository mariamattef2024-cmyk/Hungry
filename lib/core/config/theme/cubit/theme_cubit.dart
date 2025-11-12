import 'package:flutter/material.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';


import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<AppTheme> {
  ThemeCubit() : super(themeMapper[ThemeNames.green]!);

  void updateTheme(AppTheme newState) {
    emit(newState);
  }

  final String _jsonKey = 'themeMode';

  @override
  AppTheme? fromJson(Map<String, dynamic> json) {
    final savedMode = json[_jsonKey];
    return AppTheme.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(AppTheme state) {
    return state.toMap();
  }
}
