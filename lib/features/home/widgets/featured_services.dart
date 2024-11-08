import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon/features/auth/provider/auth_provider.dart';
import 'package:hair_salon/features/home/provider/home_provider.dart';
import 'package:hair_salon/features/home/widgets/service_card.dart';
import 'package:hair_salon/features/home/widgets/service_details.dart';
import 'package:provider/provider.dart';

class FeaturedServices extends StatefulWidget {
  const FeaturedServices({super.key});

  @override
  State<FeaturedServices> createState() => _FeaturedServicesState();
}

class _FeaturedServicesState extends State<FeaturedServices> {
  int currentIndex = 0;
  var services = [];

  void getAllServices() async {
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    print(authProvider.uid);
    print("UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU");
    var tempServices = await homeProvider.getAllServices();
    setState(() {
      services = tempServices;
    });
  }

  @override
  void initState() {
    super.initState();
    getAllServices();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Featured Cars",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              DotsIndicator(
                decorator: DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.blue,
                    activeSize: const Size(15, 6),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                dotsCount: 3,
                position: 0,
              ),
            ],
          ),
          const SizedBox(height: 10),
          services.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                )
              : SizedBox(
                  height: 230,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ServiceDetails(service: services[index])));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: ServiceCard(
                            serviceModel: services[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
