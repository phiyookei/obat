import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'models/antar_obat_model.dart';
import 'provider/antar_obat_provider.dart'; // ignore_for_file: must_be_immutable

class AntarObatPage extends StatefulWidget {
  const AntarObatPage({Key? key})
      : super(
          key: key,
        );

  @override
  AntarObatPageState createState() => AntarObatPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AntarObatProvider(),
      child: AntarObatPage(),
    );
  }
}

class AntarObatPageState extends State<AntarObatPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 711.v,
                  width: 389.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 375.v,
                          width: 385.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIstockphoto112,
                                height: 375.v,
                                width: 385.h,
                                alignment: Alignment.center,
                              ),
                              _buildColumnthumbsup(context)
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 19.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildStackIstockphoto(context),
                              Spacer(),
                              _buildColumnView(context)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 42.v),
              CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 45.h),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthumbsup(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 39.h,
          right: 34.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 23.h),
                      child: CustomIconButton(
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        padding: EdgeInsets.all(17.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: CustomIconButton(
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMageTablet,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: CustomIconButton(
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGameIconsMedicines,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Column(
                      children: [
                        Text(
                          "lbl_syrup".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          "lbl_rp_12k".tr,
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_paracetamol".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_rp_12k".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_ibufropen".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text(
                            "lbl_rp_12k".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillCyanTL10,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGameIconsMedicinePills,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 46.h),
                  child: CustomIconButton(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    decoration: IconButtonStyleHelper.fillCyanTL10,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSolarDocumentMedicineBold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 7.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 81.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_vitamin".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "lbl_rp_12k".tr,
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_tolak_angin".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Text(
                          "lbl_rp_12k".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackIstockphoto(BuildContext context) {
    return SizedBox(
      height: 335.v,
      width: 385.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIstockphoto112335x385,
            height: 335.v,
            width: 385.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 34.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 87.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 21.v,
                          width: 13.h,
                          margin: EdgeInsets.only(
                            top: 11.v,
                            bottom: 5.v,
                          ),
                          onTap: () {
                            onTapImgArrowleftone(context);
                          },
                        ),
                        Text(
                          "lbl_antar_obat".tr,
                          style: theme.textTheme.headlineSmall,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 36.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 18.h),
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img58894391,
                            height: 155.v,
                            width: 174.h,
                            margin: EdgeInsets.only(
                              top: 6.v,
                              bottom: 5.v,
                            ),
                          ),
                          Container(
                            height: 161.v,
                            width: 123.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              bottom: 4.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClock,
                                        height: 67.v,
                                        width: 75.h,
                                        margin: EdgeInsets.only(right: 5.h),
                                      ),
                                      SizedBox(height: 36.v),
                                      Text(
                                        "lbl_hours".tr,
                                        style: theme.textTheme.displaySmall,
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 39.v),
                                    child: Text(
                                      "lbl_24".tr,
                                      style: theme.textTheme.displaySmall,
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
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnView(BuildContext context) {
    return Container(
      width: 389.h,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.whiteA700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 47.v,
              width: 67.h,
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 21.v,
                      width: 25.h,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        right: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.lightBlue900,
                        borderRadius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPngtreeShoppin,
                    height: 34.v,
                    width: 57.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 11.h),
                      child: Text(
                        "lbl_4".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
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

  /// Navigates to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
