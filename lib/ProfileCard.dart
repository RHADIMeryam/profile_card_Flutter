import 'package:flutter/material.dart';

//point d'entrée
void main() {
  runApp(const MyApp());
}

// Le widget racine de notre application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ProfileHomePage(),
    );
  }
}

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Card"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                  width: 300,
                  height: 250,
                  color: Colors.purple,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                      ),
                      Container(
                        child: Text("Meryam RHADI",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      Container(
                        child: Text("meryamrhadi@gmail.com",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                      Container(
                        child: Text("Twitter:meryam12",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  )),
              Positioned(
                top: -70,
                right: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/photo.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  width: 130,
                  height: 130,
                ),
              )
            ],
          )),
    );
  }
}
