import 'package:app_conversor/app/components/currency_box.dart';
import 'package:app_conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late final HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              const Icon(
                Icons.monetization_on_outlined,
                color: Colors.greenAccent,
                size: 150,
              ),
              const SizedBox(
                height: 100,
              ),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
                controller: toText,
              ),
              const SizedBox(
                height: 10,
              ),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
                controller: fromText,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.convert();
                },
                child: const Text("Converter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
