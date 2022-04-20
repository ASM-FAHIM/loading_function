import 'package:flutter/material.dart';
import 'package:loading_function/loading_screen.dart';
import 'package:loading_function/screen2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading1 = false;
  bool isLoading2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoading1 = true;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoadingScreen()));
                    });
                    Future.delayed(Duration(seconds: 3), () {
                      setState(() {
                        isLoading1 = false;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen2()));
                      });
                    });
                  },
                  child: const Text(
                    "Text 1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoading2 = true;
                    });
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        isLoading2 = false;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen2()));
                      });
                    });
                  },
                  child: isLoading2
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          "Text 2",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
