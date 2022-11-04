part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  bool isLoading = false;
  List<String> cities;
  String selectedCity;

  @override
  void initState() {
    super.initState();

    cities = ['Bandung', 'Jakarta', 'Surabaya'];
    selectedCity = cities[0];
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Address",
      subtitle: "Make sure it's valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
            child: Text(
              'Phone No',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: grayFontStyle,
                  hintText: "Type your phone number"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
            child: Text(
              'Address',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: grayFontStyle,
                  hintText: "Type your address"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
            child: Text(
              'House No.',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: TextField(
              controller: houseController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: grayFontStyle,
                  hintText: "Type your house number"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
            child: Text(
              'City',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
              hint: Text("Select the city"),
              value: selectedCity,
              isExpanded: true,
              underline: SizedBox(),
              items: cities.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedCity = newValue;
                });
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {},
              child: Text(
                'Sign Up Now',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
