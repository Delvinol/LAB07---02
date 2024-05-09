import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 211, 91, 11)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menú"),
        ),
        body: ListView.builder(
          itemCount: dishList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                dishList[index].image,
              ),
              title: Text(dishList[index].name),
              subtitle: Text(dishList[index].price.toString()),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(dish: dishList[index]),
                  ),
                )
              },
            );
          }
        )
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Dish dish;

  DetailScreen({required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${dish.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              'Price: ${dish.price}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            Image.network(dish.image),
          ],
        ),
      ),
    );
  }
}


class Dish {
  final String name;
  final double price;
  final String image;

  Dish({required this.name, required this.price, required this.image});
}

List<Dish> dishList = [
  Dish(
    name: "Ajiaco", 
    price: 35.0,
    image: "https://mojo.generalmills.com/api/public/content/lWuocevZmkK6Iq3JG_OZUw_gmi_hi_res_jpeg.jpeg?v=c23ac952&t=16e3ce250f244648bef28c5949fb99ff"
  ),
  Dish(
    name: "Bandeja paisa", 
    price: 20.0,
    image: "https://i.blogs.es/206a55/bandeja-paisa-colombiana/1366_2000.jpg"
  ),
  Dish(
    name: "Arepa de Choclo", 
    price: 30.0,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoFtRY2xJ63FaHgWcpWMGH5M47GZdGQR6OV7uK7uF0NQ&s"
  ),
  Dish(
    name: "Changua", 
    price: 10.0,
    image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Changua_Soup.jpg"
  ),
  Dish(
    name: "Crema de choclo", 
    price: 25.0,
    image: "https://www.recetasnestle.com.ec/sites/default/files/styles/recipe_detail_desktop/public/srh_recipes/03c872f958a9b3cce0d0a4732814fd11.webp?itok=eo20Hu8n"
  ),
  Dish(
    name: "Lomo al trapo", 
    price: 55.0,
    image: "https://mandolina.co/wp-content/uploads/2023/08/lomo-al-trapo-3-1080x550-1-1024x521.png"
  ),
  Dish(
    name: "Mute boyacense", 
    price: 8.0,
    image: "https://cdn.colombia.com/gastronomia/2011/07/28/mute-santandereano-1591.webp"
  ),
  Dish(
    name: "Puchero de cali", 
    price: 15.0,
    image: "https://cdn.colombia.com/gastronomia/2014/02/18/puchero-de-carnaval-3532.webp"
  ),
  Dish(
    name: "Patacones", 
    price: 25.0,
    image: "https://www.elespectador.com/resizer/qEbFybi7KDtAm08TUZUoXBEyL50=/920x613/filters:quality(60):format(jpeg)/www.elespectador.com/resizer/V_vWU9Yp6dYjn6e90gaXbLAX5gM=/arc-anglerfish-arc2-prod-elespectador/public/AN5GF5CMXNEEVJQ6OE73C6O5JA.jpg"
  ),
  Dish(
    name: "Empanadas", 
    price: 50.0,
    image: "https://imag.bonviveur.com/empanadas-colombianas.webp"
  ),
];
