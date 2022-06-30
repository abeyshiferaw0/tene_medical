import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';

import '../controllers/order_tracking_controller.dart';

class OrderTrackingView extends GetView<OrderTrackingController> {
  late GoogleMapController mapcController;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  late LatLng latLng = const LatLng(37.43296265331129, -122.08832357078792);
  final Completer<GoogleMapController> _controller = Completer();
  final Location _location = Location();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: Stack(
        children: [
          ///MAP BG
          GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            circles: {
              Circle(
                circleId: const CircleId('currentCircle'),
                center: latLng,
                radius: 80,
                fillColor: AppTheme.themeColor.withOpacity(0.5),
                strokeColor: AppTheme.themeColor.withOpacity(0.2),
              ),
            },
            myLocationButtonEnabled: true,
            compassEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              mapcController = controller;
              _location.onLocationChanged.listen((l) {
                ///
                if (l.latitude != null && l.longitude != null) {
                  latLng = LatLng(
                    l.latitude!,
                    l.longitude!,
                  );
                }
              });
            },
          ),

          ///BACK BUTTON ICON
          SizedBox(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 12.w,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppTheme.themeColor,
                  ),
                ),
              ),
            ),
          ),

          ///BOTTOM PRODUCT CARD
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 6,
              shadowColor: AppTheme.themeColorFaded.withOpacity(0.2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: EdgeInsets.all(3.w),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 12.w,
                          height: 0.5.h,
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 20.w,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 16.w,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                        color: AppTheme.themeColor,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Image.network(
                                        "https://media.istockphoto.com/photos/medicine-picture-id1142715916?k=20&m=1142715916&s=612x612&w=0&h=AL07EDKbcG46QJRSW17Cq5jmqUO7bx9iSvOCsCTM8sM=",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 4.w,
                                    bottom: 0,
                                    top: 0,
                                    child: Container(
                                      width: 16.w,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        border: Border.all(
                                          color: AppTheme.themeColor,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          "https://media.istockphoto.com/photos/medicine-picture-id1142715916?k=20&m=1142715916&s=612x612&w=0&h=AL07EDKbcG46QJRSW17Cq5jmqUO7bx9iSvOCsCTM8sM=",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Image by Mapbox & National Geographic Import a KML or GeoJSON radius map on your own styled map",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Box of 30 Gloves",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const Expanded(
                                          child: SizedBox(),
                                        ),
                                        Text(
                                          "350 Birr",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: AppTheme.themeColor,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      AppTheme.themeColor,
                                      AppTheme.themeColorFaded
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0.2.w, horizontal: 0.3.w),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                    size: 8.w,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
