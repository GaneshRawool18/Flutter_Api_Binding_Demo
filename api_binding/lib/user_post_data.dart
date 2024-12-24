import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Convert to StatefulWidget to use initState()
class UserPostData extends StatefulWidget {
  final dynamic userData;
  // ignore: prefer_const_constructors_in_immutables
  UserPostData({super.key, required this.userData});

  @override
  State<UserPostData> createState() => _UserPostDataState();
}

class _UserPostDataState extends State<UserPostData> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController deleteController = TextEditingController();

  @override
  void initState() {
    super.initState();

    String productId = widget.userData?["id"] ?? 'N/A';
    idController.text = productId;

    String productName = widget.userData?['name'] ?? 'N/A';
    nameController.text = productName;

    String productPrice =
        widget.userData?['data']?['price']?.toString() ?? 'N/A';
    priceController.text = productPrice;

    String productColor = widget.userData?['data']?['color'] ?? 'N/A';
    colorController.text = productColor;

    String baseUrl = "https://api.restful-api.dev/objects/";
    String id = idController.text.trim();
    String mainUrl = '$baseUrl$id';
    deleteController.text = mainUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
      appBar: AppBar(
        title: Text("User Post Data Page",
            style:
                GoogleFonts.roboto(fontSize: 23, fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 231, 229),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  label: const Text('Product Id'),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  hintText: 'Product Id',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: const Text('Product name'),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  hintText: 'Product Name',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                controller: priceController,
                decoration: InputDecoration(
                  label: const Text('Product price'),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  hintText: 'Product price',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                controller: colorController,
                decoration: InputDecoration(
                  label: const Text('Product color'),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  hintText: 'Product color',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                controller: deleteController,
                decoration: InputDecoration(
                  label: const Text('Product Url'),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  hintText: 'Product Url',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
