import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/near_by/views/widgets/map_product_item.dart';

import '../controllers/near_by_controller.dart';

class NearByView extends GetView<NearByController> {
  NearByView({Key? key}) : super(key: key);

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  late GoogleMapController mapcController;
  final Location _location = Location();

  late LatLng latLng = const LatLng(37.43296265331129, -122.08832357078792);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: Column(
        children: [
          ///HEADER SEARCH BAR BUTTON
          buildHeaderSearchBar(),
          Expanded(
            child: Stack(
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

                ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MapProductItem();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Material buildHeaderSearchBar() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h, top: 1.h),
          child: TextField(
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              hintText: "Search for medicines/healthcare products",
              hintStyle: TextStyle(
                color: const Color(0xff757A80),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              alignLabelWithHint: true,
              prefixIcon: Icon(
                Icons.search,
                size: 6.w,
                color: Colors.black45,
              ),
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
                borderSide: BorderSide(
                  color: AppTheme.themeColor.withOpacity(0.4),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
                borderSide: BorderSide(
                  color: AppTheme.themeColor,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: 5.w,
                horizontal: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
