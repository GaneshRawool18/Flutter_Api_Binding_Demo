import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GetData extends StatefulWidget {
  List<dynamic> data = [];
  GetData({super.key, required this.data});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  dynamic imagesData = [
    'https://tse3.mm.bing.net/th?id=OIP.g73UawSHftWkfXkBH4fSZwHaEZ&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.nz6ixMTQIHcbb9JlJD3-KwHaHa&pid=Api&P=0&h=220',
    'https://tse1.mm.bing.net/th?id=OIP.Z0Jg9Nl78jMJ5_rEgvkxMAHaIw&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.bD3GsZOnMRlu5slmLZC6RQHaKm&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.DzPS9kIWf48AsMnyi9L9PQHaFj&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.AkFcNZhBh2O4NTE8zA6BdgHaE5&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.ohmnPhkbtA_4dkwgbyhTUQHaEK&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.fS9W2uUxdAJQjswGkUot_gHaE7&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.8oKNBi4ANopFCo7ZX-B-zAHaGk&pid=Api&P=0&h=220',
    'https://tse1.mm.bing.net/th?id=OIP.CCwENp1uqiZUqO2x-7XyKQHaHa&pid=Api&P=0&h=220',
    'https://tse4.mm.bing.net/th?id=OIP.afmM2ARNx0vRtuReIqVF0wHaJ_&pid=Api&P=0&h=220',
    'https://tse1.mm.bing.net/th?id=OIP.IEYkirGpquP8sd719-2UhAHaEo&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.A-HGMIsPtgYi90n6vPCmXAHaE0&pid=Api&P=0&h=220',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 242),
      appBar: AppBar(
        title: Text("Get Data Page",
            style:
                GoogleFonts.roboto(fontSize: 23, fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 231, 229),
      ),
      body: ListView.builder(
          itemCount: imagesData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    imagesData[index],
                    fit: BoxFit.fitHeight,
                    width: 200,
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(widget.data[index]["name"]),
                ),
              ],
            );
          }),
    );
  }
}
