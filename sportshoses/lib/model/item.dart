class Item {
  int? id;
  String imgPath;
  double price;
  String location;
  String name;

  Item({this.id ,required this.imgPath, required this.name, required this.price,required this.location });




  static List<Item> getItems() {
    List<Item> items = [];

    items.add(

        Item(
          name: 'Adidas Ultra',
          imgPath: 'assets/img/1.webp',
          price: 45,
          location: "yemen"
        )
    );
    items.add(

        Item(
            name: ' NMD_R1',
            imgPath: 'assets/img/2.webp',
            price: 25,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'Converse',
            imgPath: 'assets/img/3.webp',
            price: 60,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'Casual',
            imgPath: 'assets/img/4.jpg',
            price: 40,
            location: "yemen"
        )
    );

    items.add(

        Item(
            name: 'Adidas Ultra',
            imgPath: 'assets/img/9.jpeg',
            price: 45,
            location: "yemen"
        )
    );

    items.add(

        Item(
            name: 'Adidas Ultra',
            imgPath: 'assets/img/13.jpg',
            price: 45,
            location: "yemen"
        )
    );

    items.add(

        Item(
            name: 'Adidas Ultra',
            imgPath: 'assets/img/11.jpg',
            price: 45,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'Adidas Ultra',
            imgPath: 'assets/img/12.jpg',
            price: 45,
            location: "yemen"
        )
    );




    items.add(

        Item(
            name: 'Originals',
            imgPath: 'assets/img/5.jpg',
            price: 30,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'Adidas',
            imgPath: 'assets/img/6.jpg',
            price: 25,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'ULTRABOOST',
            imgPath: 'assets/img/7.jpg',
            price: 30,
            location: "yemen"
        )
    );
    items.add(

        Item(
            name: 'Revolution',
            imgPath: 'assets/img/8.jpg',
            price: 50,
            location: "yemen"
        )
    );

    return items;
  }
}















// final List<Item> items = [
//   Item(name: "product1", price: 12.99, imgPath: "assets/img/1.webp", location: "Ali shop"),
//   Item(name: "product2", price: 12.99, imgPath: "assets/img/2.webp"),
//   Item(name: "product3", price: 12.99, imgPath: "assets/img/3.jpg"),
//   Item(name: "product4", price: 12.99, imgPath: "assets/img/4.jpg"),
//   Item(name: "product5", price: 12.99, imgPath: "assets/img/5.jpg"),
//   Item(name: "product6", price: 12.99, imgPath: "assets/img/6.jpg"),
//   Item(name: "product7", price: 12.99, imgPath: "assets/img/7.jpg"),
//   Item(name: "product8", price: 12.99, imgPath: "assets/img/8.webp"),
// ];

//
//
//
//   factory Item.fromJson(Map<String,dynamic>data)
//   {
//     return Item(
//         id:data['id'] ,
//         name: data['name'],
//         imgPath: data['imgPath'],
//         price: data['price'],
//         location: data['location']);
//   }
//
//   Map<String,dynamic>  toJson()
//   {
//     return {
//       "id":id,
//       "name":name,
//       "imgPath":imgPath,
//       "price":price,
//       "location":location
//     };
//   }
// }