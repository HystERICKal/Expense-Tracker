import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //SafeArea is a good widget to use if you don't have app bar
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Row(
              //outer biger row
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //space between contents of the two rows
              children: [
                Row(
                  //inner smaller row
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          //Yellow circle for profile pic
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow[700]),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Colors.yellow[800],
                        )
                      ],
                    ),
                    const SizedBox(
                      //This just creates a blank box to create space
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        Text(
                          "Erick Francis",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.settings))
              ],
            ),
            //This just creates a blank box above the card to create space
            const SizedBox(
              height: 20,
            ),
            Container(
              //The credit card display
              width: MediaQuery.of(context).size.width,
              //It gives a square before the division by 2 which gives a rectangle,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.tertiary,
                    ],
                    transform: const GradientRotation(pi / 4),
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  const Text(
                    "Total Balance",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "R 4800.00",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                color: Colors.white30, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.arrow_down,
                                size: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Income"),
                              Text("R 2500.00"),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
