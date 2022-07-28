import 'package:flutter/material.dart';
import '../components/typography.dart';
import '../components/search.dart';
import '../components/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  InspirationTypography(
                    text: 'Nerd Autodidata',
                    color: Colors.black87,
                    size: TypographySize.medium,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InspirationTypography(
                    text: 'Inspiration',
                    color: Colors.amber,
                    size: TypographySize.large,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InspirationInputSearch(
                    placeholder: "Search you're looking for",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InspirationTypography(
                    text: 'Today',
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        InspirationCard(
                          image: 'assets/images/one.jpg',
                          type: CardType.vertical,
                        ),
                        InspirationCard(
                          image: 'assets/images/two.jpg',
                          type: CardType.vertical,
                        ),
                        InspirationCard(
                          image: 'assets/images/three.jpg',
                          type: CardType.vertical,
                        ),
                        InspirationCard(
                          image: 'assets/images/four.jpg',
                          type: CardType.vertical,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InspirationCard(
                    image: 'assets/images/three.jpg',
                    type: CardType.horizontal,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
