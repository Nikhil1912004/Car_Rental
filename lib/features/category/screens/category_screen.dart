import 'package:flutter/material.dart';
import 'package:hair_salon/features/home/widgets/category_tile.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text("Brands",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryTile(
                  imageUrl: "assets/audi.png", categoryName: "Audi"),
              CategoryTile(
                  imageUrl: "assets/opel.png", categoryName: "Opel"),
              CategoryTile(
                  imageUrl: "assets/ic_tesla_black.png",
                  categoryName: "Tesla"),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryTile(
                  imageUrl: "assets/ic_daihatsu_black.png", categoryName: "Daihatsu"),
              CategoryTile(imageUrl: "assets/ic_mitsubish_black.png", categoryName: "Mitsubishi"),
              CategoryTile(
                  imageUrl: "assets/benz.png", categoryName: "Benz"),
            ],
          ),
          // SizedBox(height: 30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     CategoryTile(
          //         imageUrl: "assets/haircoloring.png",
          //         categoryName: "Hair Coloring"),
          //     CategoryTile(
          //         imageUrl: "assets/waxing.png", categoryName: "Waxing"),
          //     CategoryTile(
          //         imageUrl: "assets/facial.png", categoryName: "Facial"),
          //   ],
          // ),
        ],
      ),
    ));
  }
}
