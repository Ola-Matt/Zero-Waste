import 'package:flutter/material.dart';
import 'package:zero_waste/screens/home_screen/home.dart';
import '../constants/constant.dart';
import 'Connections.dart';
import 'home_screen/home_screen.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

  Container userType(String imagePath, String headContent, String subContent) {
    return Container(
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor)),
      child: Row(
        children: [
          Image.asset(imagePath),
          Column(
            children: [
              Text(headContent, style: headerText),
              Text(subContent),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Connect'),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     // GestureDetector(
                  //     //   onTap: () {},
                  //     //   child: Icon(Icons.navigate_before),
                  //     // ),
                  //     TextField(
                  //       decoration: InputDecoration(
                  //         prefix: IconButton(
                  //           onPressed: () {},
                  //           icon: Icon(Icons.search),
                  //         ),
                  //         hintText: 'Search for Farmers',
                  //         suffixIcon: IconButton(
                  //           onPressed: () {},
                  //           icon: Icon(Icons.mic_none),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // userType('assets/images/Farmer.png', contentOne, '')
                  Container(
                    height: 46,
                    width: 367,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_outlined,
                              color: Colors.black87, size: 20),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                        ),
                        Container(
                          height: 46,
                          width: 251,
                          decoration: BoxDecoration(
                            color: const Color(0xffE3FFF7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search_sharp,
                                size: 20,
                                color: Color(0xff808080),
                              ),
                              const Text(
                                'Search For Farmers',
                                style: TextStyle(
                                  color: Color(0xff808080),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/notify.png',
                          width: 44,
                          height: 44,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(
                    child: Container(
                      height: 149,
                      width: 327,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff0A9D56),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/Farmer.png',
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Crop Farmers',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Stay connected with us',
                                  style: const TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'and get your produce.',
                                  style: TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                  child: Container(
                                    height: 33,
                                    width: 99,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Connections()),
                                          );
                                        },
                                        child: const Text(
                                          'Connect',
                                          style: const TextStyle(
                                            color: const Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff0A9D56),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(
                    child: Container(
                      height: 149,
                      width: 327,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff0A9D56),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/barrow.png',
                            // width: 10,
                            // height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Black Soldier Fly',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Farmers',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Connect with your farmers.',
                                  style: TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                  child: Container(
                                    height: 33,
                                    width: 99,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Connections()),
                                          );
                                        },
                                        child: const Text(
                                          'Connect',
                                          style: const TextStyle(
                                            color: const Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff0A9D56),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(
                    child: Container(
                      height: 149,
                      width: 327,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff0A9D56),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/Farmer3.png',
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Fish / Poultry',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Farmers',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Stay connected.',
                                  style: TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                  child: Container(
                                    height: 33,
                                    width: 99,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Connections()),
                                          );
                                        },
                                        child: const Text(
                                          'Connect',
                                          style: const TextStyle(
                                            color: const Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff0A9D56),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  Center(
                    child: Container(
                      height: 149,
                      width: 327,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff0A9D56),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/Farmer4.png',
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Mannual Labourers',
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Apply as a farm staff and',
                                  style: const TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'worker today.',
                                  style: TextStyle(
                                    color: const Color(0xff222323),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 85, 7),
                                  child: Container(
                                    height: 33,
                                    width: 99,
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Connections()),
                                          );
                                        },
                                        child: const Text(
                                          'Connect',
                                          style: TextStyle(
                                            color: const Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff0A9D56),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
