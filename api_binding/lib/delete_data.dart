import 'package:api_binding/api_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  TextEditingController idController = TextEditingController();

  void clearController() {
    idController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
      appBar: AppBar(
        title: Text("Delete Data Page",
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
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  label: Text(
                    "Product URL",
                    style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 82, 81, 81),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  // border: InputBorder.none,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(width: 2)),
                  hintText: 'Enter Product URL',
                  hintStyle: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Services.deleteData(context, idController);
                clearController();
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
