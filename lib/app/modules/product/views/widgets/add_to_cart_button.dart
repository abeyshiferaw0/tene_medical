import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../config/theme.dart';

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  int cartnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      width: 100.w,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        cartnumber--;
                      });
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.grey,
                      size: 35,
                    )),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
              ),
              Container(
                width: 15.w,
                height: 8.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    cartnumber.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.themeColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: 15.w,
                height: 8.h,
                decoration: const BoxDecoration(
                    color: AppTheme.themeColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        cartnumber++;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    )),
              )
            ],
          ),
          Container(
            width: 50.w,
            height: 8.h,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: AppTheme.themeColor,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ))),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
