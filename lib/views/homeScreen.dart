import 'package:eightyythree/views/widgets/home/addressWidget.dart';
import 'package:eightyythree/views/widgets/home/categoryWidget.dart';
import 'package:eightyythree/views/widgets/home/dealsWidget.dart';
import 'package:eightyythree/views/widgets/home/offerWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: Get.width / 3,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/appbarimage.png', fit: BoxFit.fill),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                      ),
                      Text(
                        'Mustafa St.',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium ', fontSize: 11),
                      ),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 19,
                child: Container(),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 10,
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(children: [
          SizedBox(
            height: 45.0,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F7F9),
                  hintText: 'Search in thousands of products',
                  hintStyle: const TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 11),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF444444),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const AddressesWidget(),
          const SizedBox(
            height: 30,
          ),
          const CategoryWidget(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Deals of the day',
            style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 11),
          ),
          const SizedBox(
            height: 30,
          ),
          const DealsWidget(),
          const SizedBox(
            height: 30,
          ),
          const OfferWidget(),
        ]),
      ),
    );
  }
}
