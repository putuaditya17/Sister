import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'model/cashier_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFf1f1eb),
        title: const Text('Sister',
            style: TextStyle(
              fontFamily: 'Beau',
              letterSpacing: 2.0,
              fontSize: 32.0,
              color: Color(0XFF92849B)
            ),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if(constraints.maxWidth <= 600) {
              return const SimpleCashList();
            } else if (constraints.maxWidth <= 1200) {
              return const SimpleCashGrid(countGrid: 4);
            } else {
              return const SimpleCashGrid(countGrid: 6);
            }
          }
      ),
    );
  }
}

class SimpleCashList extends StatelessWidget {
  const SimpleCashList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemBuilder: (context, index) {
          final SimpleCash sister = simpleCashList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(sister: sister,);
                  }));
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 1.0,
                        child: Image.asset(sister.imageAsset),
                      ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            sister.name,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                            ),
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            sister.itemPrice,
                            style: const TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              const StarButton(),
                ],
              ),
            ),
          );
        },
        itemCount: simpleCashList.length,
    );
  }
}

class SimpleCashGrid extends StatelessWidget {
  const SimpleCashGrid({super.key, required this.countGrid});
  final int countGrid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: countGrid,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: simpleCashList.map((sister) => InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(sister: sister);
                }));
          },
          child: Card(
            color: Colors.white,
            shadowColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Image.asset(
                        sister.imageAsset,
                        fit: BoxFit.cover
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    sister.name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                  child: Text(
                    sister.itemPrice,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
          const StarButton(),
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}

class StarButton extends StatefulWidget {
  const StarButton({super.key});

  @override
  _StarButtonState createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButton> {
  bool iscart = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      onPressed: () {
        setState(() {
          iscart = !iscart;
        });

      },
      icon: Icon(
        iscart ? Icons.star : Icons.star_border,
        color: Colors.amber,
      ),
    );
  }
}