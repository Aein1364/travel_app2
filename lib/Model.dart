import 'package:travel_app2/gen/assets.gen.dart';

class TravelApp {
  String title;
  String location;
  String imagePath;
  String dictance;
  String temp;
  String rating;
  String description;
  String price;

  TravelApp({
    required this.title,
    required this.location,
    required this.imagePath,
    required this.dictance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.price,
  });
}

List<TravelApp> travelList = [
  TravelApp(
    title: 'La Sierra',
    location: 'Kolumbien, South America',
    imagePath: 'assets/img/river.png',
    dictance: '20Km',
    temp: '19° C',
    rating: '7.6',
    description:
        'Diese Dokumentation von Scott Dalton und Margarita Martinez wurde über ein Jahr lang mitten unter den jugendlichen Kombattanten gedreht und zeigt die Lebenswege von ... Read MoreDiese Dokumentation von Scott Dalton und Margarita Martinez wurde über ein Jahr lang mitten unter den jugendlichen Kombattanten gedreht und zeigt die Lebenswege von .',
    price: '\$1725',
  ),
  TravelApp(
    title: 'La Selva',
    location: 'Peru, South America',
    imagePath: 'assets/img/jungle2.png',
    dictance: '7Km',
    temp: '28° C',
    rating: '4.8',
    description:
        'This Is The Shortest Of The Three Routes, But Certainly Not Any Less Interesting. The North Wales Way Leads You In 120 Km From Abergwyngregyn To The Beautiful Island Of Anglesey... Read MoreThis Is The Shortest Of The Three Routes, But Certainly Not Any Less Interesting. The North Wales Way Leads You In 120 Km From Abergwyngregyn To The Beautiful Island Of Anglesey',
    price: '\$1270',
  ),
  TravelApp(
    title: 'San Salvador',
    location: 'El Salvador, North America',
    imagePath: 'assets/img/tape.png',
    dictance: '120Km',
    temp: '32° C',
    rating: '7.1',
    description:
        'When the federation dissolved in 1841, El Salvador became a sovereign state, then formed a short-lived union with Honduras and Nicaragua called the Greater Republic of Central AmericaWhen the federation dissolved in 1841, El Salvador became a sovereign state, then formed a short-lived union with Honduras and Nicaragua called the Greater Republic of Central America.',
    price: '\$1030',
  ),
  TravelApp(
    title: 'La Costa',
    location: 'Spain, Europe',
    imagePath: 'assets/img/road.png',
    dictance: '120Km',
    temp: '32° C',
    rating: '8',
    description:
        'From the late 19th to the mid-20th century, El Salvador endured chronic political and economic instability characterized by coups, revolts.From the late 19th to the mid-20th century, El Salvador endured chronic political and economic instability characterized by coups, revolts Nicaragua called the Greater Republic.',
    price: '\$2590',
  )
];
