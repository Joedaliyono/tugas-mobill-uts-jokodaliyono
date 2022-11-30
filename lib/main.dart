import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Tugas UTS Joko Daliyono',
    home: HalamanLogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  bool visibilityPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(150),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 233, 211, 19),
              Color.fromARGB(255, 255, 133, 34),
            ])),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black87, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white60,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center()
              Text(
                " Selamat Datang Di Toko Sepatu Kami, Silahkan Login",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'User Name',
                        hintText: 'Masukan User Name Anda',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          labelText: 'Password',
                          hintText: 'Masukan Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visibilityPass = !visibilityPass;
                                });
                              },
                              icon: visibilityPass
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Route pindah = MaterialPageRoute(
                              builder: (context) => HalamanDua(),
                            );
                            Navigator.pop(context);
                          },
                          child: Text('Login')),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Pindah Halaman 3')),
      ),
    );
  }
}
