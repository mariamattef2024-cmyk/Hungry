import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/config/theme/cubit/theme_cubit.dart';
import 'package:hungry/core/config/theme/extentions/theme_extentions.dart';
import 'package:hungry/core/config/theme/utils/theme_mapper.dart';

toggleMode(BuildContext context) {
  final isDark = context.isDarkMode;
  final currentAppTheme = context.read<ThemeCubit>().state;
  AppTheme toBeReturnedState;
  if (isDark) {
    toBeReturnedState = currentAppTheme.copyWith(ThemeMode.light);
  } else {
    toBeReturnedState = currentAppTheme.copyWith(ThemeMode.dark);
  }
  context.read<ThemeCubit>().updateTheme(toBeReturnedState);
}

toggleTheme(BuildContext context, ThemeNames themeName) {
  final isDark = context.isDarkMode;
  AppTheme toBeReturnedState = themeMapper[themeName]!;
  if (isDark) {
    toBeReturnedState = toBeReturnedState.copyWith(ThemeMode.dark);
  }
  context.read<ThemeCubit>().updateTheme(toBeReturnedState);
}
