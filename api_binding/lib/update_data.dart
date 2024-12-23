import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({super.key});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
      appBar: AppBar(
        title: Text("Update data Page",
            style:
                GoogleFonts.roboto(fontSize: 23, fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 231, 229),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 75, 74, 75),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //     borderSide: BorderSide(width: 2)),
                      hintText: 'Enter Product Url',
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 75, 74, 75),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //     borderSide: BorderSide(width: 2)),
                      hintText: 'Enter Product Name',
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 75, 74, 75),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                    controller: priceController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //     borderSide: BorderSide(width: 2)),
                      hintText: 'Enter Product Price',
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 75, 74, 75),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                    controller: colorController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //     borderSide: BorderSide(width: 2)),
                      hintText: 'Enter Product Color',
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 140,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple,
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: const Center(child: Text("Submit")),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
