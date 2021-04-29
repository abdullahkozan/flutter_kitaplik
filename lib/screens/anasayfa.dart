import 'package:flutter/material.dart';
import './kitap_detay.dart';
import '../models/kitap.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  static List<Kitap> tumKitaplar = [];

  String yazarAdi;
  String kitapAdi;
  int sayfaSayisi;
  String ozet;

  @override
  void initState() {
    super.initState();
    tumKitaplar.add(
      Kitap(
          "kitap adi 1",
          "yazar 1",
          110,
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est placerat in egestas erat imperdiet sed euismod nisi porta. A diam sollicitudin tempor id eu nisl. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Aliquam ultrices sagittis orci a. Vitae aliquet nec ullamcorper sit amet risus nullam. Nulla aliquet enim tortor at auctor urna nunc id cursus. Felis bibendum ut tristique et. Vitae congue eu consequat ac felis donec et odio. Amet consectetur adipiscing elit pellentesque habitant morbi tristique. Non tellus orci ac auctor augue. Sodales ut eu sem integer vitae justo eget magna. Diam maecenas ultricies mi eget mauris pharetra et ultrices neque. Fringilla ut morbi tincidunt augue interdum velit. Nunc id cursus metus aliquam eleifend mi in nulla. Tincidunt nunc pulvinar sapien et ligula. Diam vulputate ut pharetra sit amet aliquam id diam."
              " arcu dictum varius duis at consectetur. Pretium aenean pharetra magna ac placerat. Imperdiet dui accumsan sit amet nulla facilisi. Sit amet consectetur adipiscing elit ut aliquam. Sit amet purus gravida quis. Quis ipsum suspendisse ultrices gravida. Morbi tempus iaculis urna id. Scelerisque felis imperdiet proin fermentum leo vel orci porta. Sed elementum tempus egestas sed sed risus pretium quam. In tellus integer feugiat scelerisque varius morbi enim. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Aliquet lectus proin nibh nisl condimentum id. Est placerat in egestas erat imperdiet sed euismod nisi porta. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat. Pretium fusce id velit ut tortor. Bibendum ut tristique et egestas."
              "turkiye"
              "ankara"),
    );
    tumKitaplar.add(
      Kitap("kitap adi 2", "yazar 2", 210, "özet bilgiler çok uzun aslında"),
    );
    tumKitaplar.add(
      Kitap("kitap adi 3", "yazar 3", 310, "özet bilgiler çok uzun aslında"),
    );
    tumKitaplar.add(
      Kitap("kitap adi 4", "yazar 4", 410, "özet bilgiler çok uzun aslında"),
    );
    tumKitaplar.add(
      Kitap("kitap adi 5", "yazar 5", 510, "özet bilgiler çok uzun aslında"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Anasayfa'),
        centerTitle: true,
        actions: [
          ButtonBar(
            children: [
              IconButton(
                splashColor: Colors.amber,
                icon: Icon(Icons.menu_book),
                onPressed: () {
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    isDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Container(
                          height: 350,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListView(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Kitap Adi",
                                    hintText: "Kitap Adini Giriniz..",
                                    border: new OutlineInputBorder(
                                        borderSide:
                                        new BorderSide(color: Colors.blue)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      kitapAdi = value;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Yazar Adi",
                                    hintText: "Yazar Adini Giriniz..",
                                    border: new OutlineInputBorder(
                                        borderSide:
                                        new BorderSide(color: Colors.blue)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      yazarAdi = value;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Sayfa Sayisi",
                                    hintText: "Sayfa Sayisini Giriniz..",
                                    border: new OutlineInputBorder(
                                        borderSide:
                                        new BorderSide(color: Colors.blue)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      sayfaSayisi = int.parse(value);
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Özet",
                                    hintText: "Özeti Giriniz..",
                                    border: new OutlineInputBorder(
                                        borderSide:
                                        new BorderSide(color: Colors.blue)),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      ozet = value;
                                    });
                                  },
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                        child: const Text(
                                            'Kitap Listesine Kaydet'),
                                        onPressed: () {
                                          setState(() {
                                            tumKitaplar.add(Kitap(kitapAdi,
                                                yazarAdi, sayfaSayisi, ozet));
                                          });
                                          Navigator.pop(context);
                                        }),
                                    ElevatedButton(
                                      child: const Text('İptal'),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ],

        /* leading: IconButton(icon: Icon(Icons.camera), onPressed: () {}),*/
      ),
      body: SafeArea(
        child: tumKitaplar.length != 0
            ? ListView.builder(
          itemCount: tumKitaplar.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return KitapDetay(
                            kitap: tumKitaplar[index],
                          );
                        },
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    child: FlutterLogo(),
                  ),
                  title: Text(tumKitaplar[index].kitapAdi),
                  subtitle: Text(tumKitaplar[index].yazarAdi),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        tumKitaplar.removeAt(index);
                      });
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        )
            : Center(
          child: Text('Kitap Listesi Boş'),
        ),
      ),
    );
  }
}
