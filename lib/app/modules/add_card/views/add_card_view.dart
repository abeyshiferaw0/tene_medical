import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../config/theme.dart';
import '../controllers/add_card_controller.dart';

class AddCardView extends GetView<AddCardController> {
  const AddCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.off(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 35,
                color: Colors.black,
              )),
          title: const Text(
            'Add Card',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: false,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              " Card Number",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            Searchfield(
              icon: Icons.credit_card,
              placeholdertext: "5555 5555 5555 4444",
              enabled: true,
              heght: 10.h,
              width: 95.w,
            ),
            Text(
              " Exp Date",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Searchfield(
                  icon: Icons.calendar_month,
                  placeholdertext: "MM ",
                  enabled: true,
                  heght: 12.h,
                  width: 45.w,
                ),
                Searchfield(
                  icon: Icons.calendar_today,
                  placeholdertext: "YYYY",
                  enabled: true,
                  heght: 12.h,
                  width: 45.w,
                )
              ],
            ),
            Text(
              "Security Code (CVV)",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            Searchfield(
              icon: Icons.calendar_today,
              placeholdertext: "123",
              enabled: true,
              heght: 12.h,
              width: 45.w,
            ),
            Text(
              "Country",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            dropdown()
          ]),
        ));
  }
}

Widget dropdown() {
  List<String> mylist = [];
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    width: 95.w,
    child: DropdownButtonFormField(
      decoration: InputDecoration(
        hintText: "Select Country",
        hintStyle: TextStyle(
          color: const Color(0xffD6D6D6),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
        alignLabelWithHint: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Flag_of_Ethiopia_%283-2%29.svg/1200px-Flag_of_Ethiopia_%283-2%29.svg.png",
              height: 3.h,
              width: 6.w,
            ),
          ),
        ),
        fillColor: Colors.white,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(6.0),
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
          horizontal: 2.7.w,
        ),
      ),
      isExpanded: true,
      hint: const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Text(
          'Select Country',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontFamily: 'WorkSans',
          ),
        ),
      ),
      value: mylist,
      onChanged: (newValue) {
        // FocusScope.of(context).requestFocus(new FocusNode());
        // controller.selectedGender.value = newValue.toString();
      },
      items: mylist.map((gender) {
        return DropdownMenuItem(
          child: Text(gender),
          value: gender,
        );
      }).toList(),
      validator: (value) {
        if (value == null) {
          return "Please select your gender";
        }
        return null;
      },
    ),
  );
}

class Searchfield extends StatelessWidget {
  const Searchfield(
      {Key? key,
      required this.icon,
      required this.placeholdertext,
      required this.enabled,
      required this.heght,
      required this.width})
      : super(key: key);
  final IconData icon;
  final String placeholdertext;
  final bool enabled;
  final double heght, width;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: heght,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: TextField(
          cursorColor: AppTheme.themeColorFaded,
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.grey[400],
              ),
              labelStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.themeColorFaded),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppTheme.themeColorFaded, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              labelText: placeholdertext,
              hintStyle: TextStyle(color: Colors.grey[400]),
              hintText: placeholdertext,
              enabled: enabled),
        ));
  }
}
