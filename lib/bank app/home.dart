import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: home_ui(),));
}
class home_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code,
              size: 30,
            ),
          )
        ],
        title: Center(
            child: Text(
              'Welcome! MAUSAM',
              style: TextStyle(fontSize: 20),
            )),
      ),
      body: Stack
        (
        children: [
          Container(
            height: 230,
          ),
          Container(
            height: 100,
            color: Colors.red.shade900,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 180,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red.shade900,
                            radius: 60,
                            child: const CircleAvatar(
                              radius: 56,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80 '),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'RAKESH P S',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 5),
                                home_ui(),
                                const SizedBox(height: 5),
                                const Text(
                                  '683684279511024',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 5),
                                home_ui(),
                                const SizedBox(height: 5),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}