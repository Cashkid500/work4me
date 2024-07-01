import 'bloc/introduction_bloc.dart';
import 'models/introduction_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/custom_elevated_button.dart';

class Introduction extends StatefulWidget {
  Introduction({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroductionBloc>(
      create: (context) => IntroductionBloc(IntroductionState(
        onboardingScreenNineModelObj: IntroductionModel(),
      ))
        ..add(OnboardingScreenNineInitialEvent()),
      child: Introduction(),
    );
  }

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroductionBloc, IntroductionState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: PageView(
              //physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int pageIndex) {
                setState(() {
                  _currentPageIndex = pageIndex;
                });
              },
              children: [
                _buildPage(context, "msg_your_nearby_services".tr,
                    "msg_effortlessly_find".tr, ImageConstant.intro1),
                _buildPage(context, "msg_find_what_you_need".tr, "msg_services_to_find".tr, ImageConstant.intro2),
                _buildPage(context, "msg_hassle_free_booking".tr, "msg_securely_book_appointments".tr, ImageConstant.intro3),
              ],
            ),
            bottomNavigationBar: _buildBottomNavigationBar(context, _pageController, _currentPageIndex)
          ),
        );
      },
    );
  }

  Widget _buildPage(BuildContext context, String title, String description, String imagePath) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 44.h,
              vertical: 125.v,
            ),
            decoration: AppDecoration.fillLightGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: imagePath,
              height: 212.v,
              width: 244.h,
            ),
          ),
          SizedBox(height: 37.v),
          Text(
            title,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 321.h,
            margin: EdgeInsets.only(right: 13.h),
            child: Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context, PageController pageController, int index) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSkipButton(index == 2),
          Container(
            height: 8.v,
            margin: EdgeInsets.symmetric(vertical: 16.v),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.onPrimaryContainer,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 72.h,
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.fillBlue,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
            onPressed: () {
              if (index == 2){
                NavigatorService.pushNamed(AppRoutes.userType);
              }
              else{
                pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
                );
              }
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildSkipButton(bool isHidden) {
    return CustomElevatedButton(
      isHidden: isHidden,
      isDisabled: isHidden,
      width: 72.h,
      text: "lbl_skip".tr,
      onPressed: () {
        NavigatorService.pushNamed(AppRoutes.userType);
      },
    );
  }
}