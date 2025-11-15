import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/widgets/custom_text_field.dart';
import 'package:hungry/features/home/presentation/widgets/chip_item.dart';
import 'package:hungry/features/home/presentation/widgets/item_card.dart';
import 'package:hungry/features/home/presentation/widgets/user_header.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<String> categorys = [
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
                    child: SingleChildScrollView(
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
                                  child: ChipItem(
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
                    image: 'assets/images/image 1.png',
                    title: 'Cheeseburger',
                    subtitle: 'Wendy\'s Burger',
                    rating: '4.9',
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0.r,
                  mainAxisSpacing: 5.0.r,
                  childAspectRatio: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






        // GridView.builder(
        //                     physics = NeverScrollableScrollPhysics(),
        //                     shrinkWrap = true,
        //                     gridDelegate =
        //                         SliverGridDelegateWithFixedCrossAxisCount(
        //                           crossAxisCount: 2,
        //                           crossAxisSpacing: 5.0.r,
        //                           mainAxisSpacing: 5.0.r,
        //                           childAspectRatio: 0.7,
        //                         ),
        //                     itemBuilder = (context, index) {
        //                       return ItemCard(
        //                         image: 'assets/images/image 1.png',
        //                         title: 'Cheeseburger',
        //                         subtitle: 'Wendy\'s Burger',
        //                         rating: '4.9',
        //                       );
        //                     },
        //                     itemCount = 6,
        //                   ),













    // Padding(
    //               padding: EdgeInsets.only(right: 10.0.r),
    //               child: Chip(
    //                 backgroundColor:
    //                     index == 0 ? Color(0xFFFF6E4E) : Color(0xFFF4F4F4),
    //                 label: Text(
    //                   categorys[index],
    //                   style: index == 0
    //                       ? AppTextStyles.mSemiBold
    //                           .copyWith(color: Colors.white)
    //                       : AppTextStyles.mRegular
    //                           .copyWith(color: Color(0xFF7D7D7D)),
    //                 ),
    //               ),
    //             );