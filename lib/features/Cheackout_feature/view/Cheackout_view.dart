import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cheackout_feature/view/item/PaymentOption.dart';
import 'package:clean_arc/features/Cheackout_feature/view/widget/BranchInfoWidget.dart';
import 'package:clean_arc/features/Cheackout_feature/view/widget/ConfirmationScreen.dart';
import 'package:clean_arc/features/my_orders_feature/presentation/views/my_orders_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _selectedOption = 1;
  int _selectedPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LocaleKeys.checkout.tr()),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Image.asset(
                      AppImages.images.demo.png.tak.path,
                      color: _selectedOption == 0
                          ? Colors.white
                          : context.color.primaryColor,
                      width: 30,
                      height: 30,
                    ),
                    withBorderOnly: _selectedOption != 0,
                    bgColor: _selectedOption == 0
                        ? context.color.primaryColor!
                        : Colors.transparent,
                    borderColor: context.color.primaryColor!,
                    titleColor: _selectedOption == 0
                        ? Colors.white
                        : context.color.primaryColor!,
                    onPressed: () => setState(() => _selectedOption = 0),
                    titleFontSize: AppDimensions.fontSizeDefault,
                    title: LocaleKeys.takeaway.tr(),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    icon: Image.asset(
                      AppImages.images.demo.png.delivery.path,
                      width: 30,
                      height: 30,
                      color: _selectedOption == 1
                          ? Colors.white
                          : context.color.primaryColor,
                    ),
                    withBorderOnly: _selectedOption != 1,
                    bgColor: _selectedOption == 1
                        ? context.color.primaryColor!
                        : Colors.transparent,
                    borderColor: context.color.primaryColor!,
                    titleColor: _selectedOption == 1
                        ? Colors.white
                        : context.color.primaryColor!,
                    onPressed: () => setState(() => _selectedOption = 1),
                    titleFontSize: AppDimensions.fontSizeDefault,
                    title: LocaleKeys.delivery.tr(),
                  ),
                ),
              ],
            ),
            
            Expanded(
              child: SingleChildScrollView(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    _selectedOption == 1
                        ? _buildAddressSection()
                        : BranchInfoWidget(
                            branchName: "Branch you will order from",
                            address: "32 Mostafa Kamal St, Cairo, Egypt",
                            onChange: () {
                              print("Change branch clicked");
                            },
                          ),
                    SizedBox(height: 16),
                    TextApp(LocaleKeys.paymentMethod.tr(),
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    _buildPaymentOptions(),

                  ],
                ),
              ),
            ),
            CustomButton(
              width: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmationScreen(
                      onViewOrders: () {
                        NavigationHelper.pushReplacementAll(context, MyOrdersView());
                      },
                    ),
                  ),
                );
              },
              title: LocaleKeys.orderNow.tr(),
            ),  ],
        ),
      ),
    );
  }

  Widget _buildAddressSection() {
    return CustomContainergoogleMap();

    //  CustomContainerCard(
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Image.asset(
    //           "assets/images/demo/png/confairm.png",
    //           height: 200,
    //           width: double.infinity,
    //         ),
    //         SizedBox(height: 8),
    //         TextApp("Apartment Down Town",
    //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    //         TextApp("Floor 5, 32 Mostafa Kamal St, Cairo, Egypt"),
    //         TextApp("Phone number: +201557774829"),
    //         Align(
    //           alignment: Alignment.centerRight,
    //           child: TextButton(
    //             onPressed: () {},
    //             child: TextApp(LocaleKeys.change.tr(),
    //                 style: TextStyle(color: Colors.blue)),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  Widget _buildPaymentOptions() {
    return Column(
      children: [
        PaymentOption(
          title: LocaleKeys.payWithCreditCard.tr(),
          imagePath: AppImages.images.demo.png.mastercard.path,
          isSelected: _selectedPaymentMethod == 0,
          onTap: () => setState(() => _selectedPaymentMethod = 0),
        ),
        PaymentOption(
          title: LocaleKeys.payWithFawry.tr(),
          imagePath: AppImages.images.demo.png.fawry.path,
          isSelected: _selectedPaymentMethod == 1,
          onTap: () => setState(() => _selectedPaymentMethod = 1),
        ),
        PaymentOption(
          title: LocaleKeys.payWithWallet.tr() + "  35 EGP ",
          imagePath: AppImages.images.demo.png.wallt.path,
          isSelected: _selectedPaymentMethod == 2,
          onTap: () => setState(() => _selectedPaymentMethod = 2),
        ),
        PaymentOption(
          title: LocaleKeys.payOnDelivery.tr(),
          imagePath: AppImages.images.demo.png.payondelivery.path,
          isSelected: _selectedPaymentMethod == 3,
          onTap: () => setState(() => _selectedPaymentMethod = 3),
        ),
      ],
    );
  }
}

class CustomContainergoogleMap extends StatefulWidget {
  const CustomContainergoogleMap({super.key});

  @override
  State<CustomContainergoogleMap> createState() =>
      _CustomContainergoogleMapState();
}

class _CustomContainergoogleMapState extends State<CustomContainergoogleMap> {
  late GoogleMapController _mapController;

  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194),
    zoom: 10,
  );

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: GoogleMap(
              initialCameraPosition: _initialCameraPosition,
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
              markers: {
                Marker(
                  markerId: MarkerId('cairo_location'),
                  position: LatLng(30.0444, 31.2357),
                  infoWindow: InfoWindow(title: "Apartment Down Town"),
                ),
              },
            ),
          ),
          SizedBox(height: 8),
          TextApp("Apartment Down Town",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          TextApp("Floor 5, 32 Mostafa Kamal St, Cairo, Egypt"),
          TextApp("Phone number: +201557774829"),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text("Change", style: TextStyle(color: Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }
}
