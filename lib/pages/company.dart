import 'package:flutter/material.dart';
import 'package:police/data.dart';
import 'package:police/main.dart';

class Company extends StatefulWidget {
  const Company({super.key, required this.n});
  final int n;

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  final Info info = Info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 68, 120, 225),
        title: Text(
          'COMPANY ${widget.n}',
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mq.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  const Text(
                    'Accomodation (Stay)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(info.stay[widget.n],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.15,
            ),
            Card(
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  const Text(
                    'Duty (Deployment)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(info.deploy[widget.n],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(info.deploy[widget.n],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
