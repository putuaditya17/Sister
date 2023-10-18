import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_dicoding/model/cashier_model.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Roboto');

class DetailScreen extends StatelessWidget {
  final SimpleCash sister;
  const DetailScreen({super.key, required this.sister});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return DetailWebPage (sister: sister);
          } else {
            return DetailMobilePage(sister: sister);
          }
        });
  }
}

class DetailWebPage extends StatefulWidget {
  final SimpleCash sister;
  const DetailWebPage({super.key, required this.sister});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {Navigator.pop(context);},
                          icon: const Icon(
                              Icons.arrow_back, color: Colors.grey
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Alat Elektronik',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(widget.sister.imageAsset),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                widget.sister.name,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        const Text(
                                            'Stock : ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        const SizedBox(width: 8.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            widget.sister.stock,
                                            style: informationTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Column(
                                      children: [
                                        const Text(
                                          'Modal : ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(width: 8.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            widget.sister.capitalPrice,
                                            style: informationTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Icon(Icons.monetization_on_outlined, color: Colors.teal),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.sister.itemPrice,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: informationTextStyle.fontStyle,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.sister.description,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  final SimpleCash sister;
  const DetailMobilePage({super.key, required this.sister});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(sister.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {Navigator.pop(context);},
                            icon: Icon(
                                Icons.arrow_back, color: Colors.grey
                            ),
                          ),
                        ),
                        const StarButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                sister.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      const Text(
                        'Stock : ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          sister.stock,
                          style: informationTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    children: [
                      const Text(
                        'Modal : ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          sister.capitalPrice,
                          style: informationTextStyle,
                        ),
                      ),
                    ],
                  ),
                  Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Icon(Icons.monetization_on_outlined, color: Colors.teal),
                          const SizedBox(width: 8.0),
                          Text(
                            sister.itemPrice,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: informationTextStyle.fontStyle,
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                sister.description,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
          ],
        ),
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