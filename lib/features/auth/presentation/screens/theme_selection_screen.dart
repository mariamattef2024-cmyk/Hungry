// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hungry/core/config/theme/cubit/theme_cubit.dart';
// import 'package:hungry/core/config/theme/utils/theme_mapper.dart';

// class ThemeSelectionScreen extends StatelessWidget {
//   static const String routeName = '/theme-selection';
//   const ThemeSelectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select Theme'),
//       ),
//       body: ListView.builder(
//         itemCount: themeMapper.length,
//         itemBuilder: (context, index) {
//           final themeName = themeMapper.keys.elementAt(index);
//           final theme = themeMapper[themeName]!;
//           return RadioListTile<ThemeNames>(
//             title: Text(themeName.name),
//             value: themeName,
//             groupValue: context.watch<ThemeCubit>().state.name,
//             onChanged: (value) {
//               if (value != null) {
//                 context.read<ThemeCubit>().updateTheme(themeMapper[value]!);
//               }
//             },
//           );
//         },
//       ),
//     );
//   }
// }
