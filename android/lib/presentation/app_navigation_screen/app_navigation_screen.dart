import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "главный экран".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k0Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "документы".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "продажи-заказы".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "продажи-отгрузки".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k3Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "закупки-заказы".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k4Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "закупки-приемки".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k5Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "склад-перемещения".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k6Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "склад-списания".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k7Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отчет о продажах".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k8Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отчет о закупках".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k9Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "заказы клиентов созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k10Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отгрузки созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k11Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "заказы поставщ созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k12Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "прием созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k13Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "перемещения созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k14Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "списания созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k15Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отчет продажи созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k16Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отчет списания созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k17Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "выбор контр".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k18Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "заказы клиентов есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k19Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "заказы поставщикам есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k20Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "приемки есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k21Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "перемещения есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k22Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "списания есть Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "списания есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k24Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "списания есть One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "отгрузки есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k26Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "товары".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k27Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "товар созд One - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "товары в наличии".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k30Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "товар созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k31Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "контрагенты".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k32Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "контр созд".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k33Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "контр есть".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k34Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "контр карточка".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k35Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "контактное лицо".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k36Screen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
