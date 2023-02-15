import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constans/colors/app_colors.dart';
import 'package:flutter_quiz_app/constans/text_Style/app_text_style.dart';
import 'package:flutter_quiz_app/utilities/question_answers_util/quiz_list_util.dart';

const String TuuraTandoo = 'Tuura';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isQuiestionFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        title: const Center(
          child: Text('Quiz App'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (isQuiestionFinished == true)
              AlertDialog(
                title: const Text('Suroolor buttu'),
                actions: [
                  TextButton(
                    child: const Text('Kaira Bashta'),
                    onPressed: () {
                      quizListUtil.restart();
                      isQuiestionFinished = false;
                      setState(() {});

                      quizListUtil.suroonuAlipKel();

                      icons = [];
                    },
                  ),
                ],
              ),
            Text(
              quizListUtil.suroonuAlipKel().toString(),
              textAlign: TextAlign.center,
              style: AppTextStyle.white35w600,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    userdinjooby(true);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 105,
                        vertical: 15,
                      ),
                      child: Text(
                        'Жаккан жок',
                        style: AppTextStule.white30w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    userdinjooby(false);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 145,
                        vertical: 18,
                      ),
                      child: Text(
                        'Жакты',
                        style: AppTextStule.white30w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: icons,
            )
          ],
        ),
      ),
    );
  }

  void userdinjooby(bool userbasty) {
    bool? tuurajoop = quizListUtil.jooptuAlopKel();
    if (tuurajoop == userbasty) {
      icons.add(jakkanjokIcon);
    } else if (tuurajoop != userbasty) {
      icons.add(jaktyIcon);
    }

    quizListUtil.otkoz();
    if (quizListUtil.suroonuAlipKel() == '') {
      isQuiestionFinished = true;
    }
    setState(() {});
  }
}

List<Icon> icons = [];

Icon jakkanjokIcon = const Icon(
  Icons.close,
  color: AppColors.purple,
  size: 60,
);
Icon jaktyIcon = const Icon(
  Icons.check,
  color: AppColors.green,
  size: 60,
);
