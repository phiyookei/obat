import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../antar_obat_page/antar_obat_page.dart';
import 'models/obat_model.dart';
import 'provider/obat_provider.dart';

class ObatScreen extends StatefulWidget {
  const ObatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ObatScreenState createState() => ObatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ObatProvider(),
      child: ObatScreen(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ObatScreenState extends State<ObatScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStackIstockphoto112(context),
              _buildStackTotal(context),
              SizedBox(height: 31.v),
              CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(left: 46.h),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackIstockphoto112(BuildContext context) {
    return SizedBox(
      height: 344.v,
      width: 384.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIstockphoto112344x384,
            height: 344.v,
            width: 384.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 127.h,
                bottom: 16.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 33.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 21.v,
                          width: 13.h,
                          margin: EdgeInsets.only(top: 17.v),
                          onTap: () {
                            onTapImgArrowleftone(context);
                          },
                        ),
                        Text(
                          "lbl_obat".tr,
                          style: theme.textTheme.headlineSmall,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSquare,
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 46.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_syrup2".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSquareBlack900,
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_paracetamol".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      right: 33.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.v),
                          child: Text(
                            "lbl_ibuprofen".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      right: 58.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 46.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_vitamin".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackTotal(BuildContext context) {
    return SizedBox(
      height: 375.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 375.v,
              width: 384.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIstockphoto112344x384,
                    height: 375.v,
                    width: 384.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 2.v,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSquareBlack90043x43,
                            height: 43.adaptSize,
                            width: 43.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 46.h,
                              top: 4.v,
                            ),
                            child: Text(
                              "lbl_tolak_angin".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 280.v,
                bottom: 26.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 9.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "lbl_total".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Spacer(
                    flex: 45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_rp_24_000".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Spacer(
                    flex: 54,
                  ),
                  Container(
                    height: 47.v,
                    width: 67.h,
                    margin: EdgeInsets.only(top: 8.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame52,
                          height: 47.v,
                          width: 67.h,
                          radius: BorderRadius.circular(
                            11.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: Text(
                              "lbl_4".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.antarObatPage;
      case BottomBarEnum.Thumbsupgray50:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.antarObatPage:
        return AntarObatPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
