import "package:flutter/material.dart";
import "package:ui_practice_flutter_app/widgets/custom_dropdown_button.dart";

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          // color: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [_pageTitle(), bookingRide()],
              ),
              Align(alignment: Alignment.bottomCenter, child: astroImgWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Text(
      "#Stateless App",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget astroImgWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/img/moon.jpg"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> items = ['Solomon Station', 'Janet Book Club'];
    return CustomDropDownButton(items: items, width: _deviceWidth);
  }

  Widget _travellingInformation() {
    List<String> stationNumber = ["1", "2", "3", "4", "5"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(items: stationNumber, width: _deviceWidth * 1.45),
        CustomDropDownButton(
          items: ["Economy", "Premium", "First", "Business", "Budget"],
          width: _deviceWidth * 0.45,
        ),
      ],
    );
  }

  Widget bookingRide() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellingInformation(),
          rideButton(),
        ],
      ),
    );
  }

  Widget rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      height: _deviceHeight * 0.05,
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueAccent.shade400,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
