import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app2/Model.dart';
import 'package:expandable/expandable.dart';
import 'package:expandable_text/expandable_text.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * .6,
              child: Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height * .6 - 90,
                    //background
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      child: Image.asset(
                        travelList[selectedIndex].imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    right: 30,
                    //head icons
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.3),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.3),
                              shape: BoxShape.circle),
                          child: const Icon(
                            CupertinoIcons.heart,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    bottom: 110,
                    //location name
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[selectedIndex].title,
                          style: themeData.textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.location_solid,
                              size: 15,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[selectedIndex].location,
                              style: themeData.textTheme.labelSmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: 0,
                    child: SizedBox(
                      width: 100,
                      height: double.maxFinite,
                      //image list
                      child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return imageItem(index);
                          }),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              //information card
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardItem(
                      lable: 'Dictance',
                      detail: travelList[selectedIndex].dictance),
                  CardItem(
                      lable: 'Temp', detail: travelList[selectedIndex].temp),
                  CardItem(
                      lable: 'Rating',
                      detail: travelList[selectedIndex].rating),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              //description header
              child: Text(
                'Description',
                style: themeData.textTheme.labelMedium,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              //description text
              child: ExpandableText(
                travelList[selectedIndex].description,
                expandText: 'Read More',
                style: themeData.textTheme.bodyMedium,
                collapseText: 'Read Less',
                maxLines: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price information
                  Column(
                    children: [
                      Text(
                        'Total Price',
                        style: themeData.textTheme.labelSmall!
                            .apply(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        travelList[selectedIndex].price,
                        style: themeData.textTheme.displayLarge,
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        minimumSize:
                            MaterialStateProperty.all(const Size(85, 85)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)))),
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//image list method

//image list method
  Widget imageItem(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AnimatedContainer(
              width: selectedIndex == index ? 85 : 75,
              height: selectedIndex == index ? 85 : 75,
              margin: const EdgeInsets.symmetric(vertical: 5),
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.6), blurRadius: 25)
                  ],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                      width: 4,
                      color: selectedIndex == index
                          ? const Color.fromARGB(255, 205, 130, 32)
                          : Colors.white)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  travelList[index].imagePath,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ],
    );
  }
}

// information card list
class CardItem extends StatelessWidget {
  final String lable;

  final String detail;
  const CardItem({
    super.key,
    required this.lable,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color(0xff000000).withOpacity(.2), width: 1),
          borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        width: 90,
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              lable,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              detail,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
