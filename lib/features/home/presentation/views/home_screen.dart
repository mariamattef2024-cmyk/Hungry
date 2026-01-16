import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/widgets/custom_text_field.dart';
import 'package:hungry/features/home/presentation/widgets/item_card.dart';
import 'package:hungry/features/home/presentation/widgets/item_chip.dart';
import 'package:hungry/features/home/presentation/widgets/user_header.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> categorys = [
    'All',
    'Burger',
    'Pizza',
    'Dessert',
    'Drinks',
    'Salad',
  ];
 late int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0.r),
                    child: Column(
                      children: [
                        Gap(20),
                        UserHeader(),
                        Gap(20),
                        CustomtTextfField(
                          hint: 'Search',
                          child: SvgPicture.asset('assets/svg/search.svg'),
                        ),
                        Gap(20),
                    
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(right: 10.0.r),
                          child: Row(
                            children: List.generate(categorys.length, (
                              index,
                            ) {
                              return Padding(
                                padding: EdgeInsets.only(right: 8.0.r),
                                child: ItemChip(
                                  onTap: () {
                                    selectedIndex = index;
                                    setState(() {});
                                  },
                                  categorys: categorys,
                                  selectedIndex: selectedIndex,
                                  index: index,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.r),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 6, (
                  context,
                  index,
                ) {
                  return ItemCard(
                    image: 'assets/images/image 6.png',
                    title: 'Cheeseburger',
                    subtitle: 'Wendy\'s Burger',
                    rating: '4.9',
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0.r,
                  mainAxisSpacing: 10.0.r,
                  childAspectRatio: 0.6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
