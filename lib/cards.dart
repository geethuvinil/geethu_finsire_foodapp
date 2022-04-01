import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardData{
  final String name;
  final String sub;
  final String img;
  final String subimg;

  const CardData(
      {required this.name,
        required this.sub,
        required this.img,
  required this.subimg,

      });


}

class Cards extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    List<CardData> values = [
CardData(
  name: 'Burgers',
  sub: "Burgers are usually filled with vegtables,meat and chesese. \n \n PRICE:200",
  img: "assets/food.jpg",
  subimg: "assets/food.jpg",

),
      CardData(name: "Pizza",
          sub: "Pizza is a flat,rounded dough topped with veggies,sliced meats, cheese etc.",
          img: "assets/pizza.jpg",
        subimg:  "assets/pizza.jpg",
      ),
      CardData(name: "Wraps",
    sub: "Wrap is made of flatbreads along with the fillings like meat,lettuce, other vegetables  etc.\n \n PRICE:180",
    img: "assets/wraps.jpg",
        subimg:  "assets/wraps.jpg",
      ),
      CardData(name: "Soft drinks",
          sub: "Cola/Pepsi/Fanta/Sprite  \n \n PRICE:30(for each)",
          img:"assets/drinks.jpg",
        subimg:  "assets/drinks.jpg",
      ),
    ];
    return Center(
      child: Container(
        width: 500,
        height: 500,
        child: GridView.builder(
            gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 375,
                mainAxisSpacing: 5,
                childAspectRatio: 0.6,
                crossAxisSpacing:
                5),
          itemCount:4,
          itemBuilder:(context,index)
        {
           return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child:Column(
    children: [
      Expanded(child:
      Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(values[index].img),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
    ),
      ),
        ListTile(
                  title: Text(values[index].name,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    values[index].sub,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                  ButtonBar(
                  children: <Widget>[
    IconButton(
    onPressed: (){
    print("burgers");
    },
    icon:ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child:  Image.asset(
      values[index].subimg,
    width: 400.0,
    height: 400.0,
    fit: BoxFit.fill,
    ),
    ),

    ),],),




              ],),
            );



        },),),);
  }
}