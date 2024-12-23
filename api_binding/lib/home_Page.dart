import 'package:api_binding/api_services.dart';
import 'package:api_binding/delete_data.dart';
import 'package:api_binding/get_data.dart';
import 'package:api_binding/post_data.dart';
import 'package:api_binding/update_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
      appBar: AppBar(
        title: Text("Home Page",
            style:
                GoogleFonts.roboto(fontSize: 23, fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 231, 229),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Services.getData(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 12, 189, 41),
                          offset: Offset(0, 4),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(" Get Data "),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PostData();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 26, 40, 233),
                          offset: Offset(0, 4),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Post Data"),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const UpdateData();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 226, 35, 194),
                          offset: Offset(0, 4),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Update Data"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DeleteData();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 236, 57, 57),
                          offset: Offset(0, 4),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Delete Data"),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
