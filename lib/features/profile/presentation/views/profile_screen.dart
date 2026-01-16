import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/config/theme/app_text_style.dart';
import 'package:hungry/core/widgets/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  @override
  void initState() {
    super.initState();
    name.text = 'Mariam';
    email.text = 'mariam@gmail.com';
    address.text = 'Cairo,Egypt';
    password.text = '********';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to edit profile screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 120.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4.w),
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1580489944761-15a19d654956?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29uYXxlbnwwfHwwfHx8MA%3D%3D',
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(40.h),
                Column(
                  children: [
                    CustomtTextfField(hint: 'Name', controller: name),
                    Gap(20.h),
                    CustomtTextfField(hint: 'Email', controller: email),
                    Gap(20.h),
                    CustomtTextfField(
                      hint: 'Delivery address',
                      controller: address,
                    ),
                    Gap(20.h),
                    Divider(
                      endIndent: 30.w,
                      indent: 30.w,
                      thickness: 1,
                      color: Color(0xffE8E8E8),
                    ),
                    Gap(20.h),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5.h,
                        horizontal: 10.0.w,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),

                      tileColor: Color(0xffF3F4F6),
                      title: Text(
                        'Debit card ',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                        '**** ***** 1234 ',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: Text(
                          'default',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      leading: Image.asset('assets/images/image 13.png'),
                    ),
                    Gap(20.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      'Edit Profile',
                      style: AppTextStyles.headingStyle18Ro.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Gap(5.w),
                    Icon(Icons.edit, size: 20.h, color: Colors.white),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.w,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      'Log out',
                      style: AppTextStyles.headingStyle18Ro.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Gap(5.w),
                    Icon(
                      Icons.logout,
                      size: 20.h,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
