import 'package:flutter/material.dart';

class CompeletInformation extends StatelessWidget {
  const CompeletInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(child: SizedBox(),),
              const Text(
                "Enter Your Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  suffixIcon: const Icon(
                    Icons.edit,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Enter Your Phone Number",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Enter your phone",
                  suffixIcon: const Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Add Address",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Enter your address",
                  suffixIcon: const Icon(
                    Icons.home,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xff69A03A),
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  fixedSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {

                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Expanded(child: SizedBox(),),
            ],
          ),
        ),
      ),
    );
  }
}
