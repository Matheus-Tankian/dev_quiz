import 'package:dev_quiz/pages/home/widgtes/score_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/core/core.dart';


class AppBarWidget extends PreferredSize{
  AppBarWidget()
    : super(
    preferredSize: const Size.fromHeight(250),
    child: Container(
      height: 260,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 160,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                      text: 'Olá, ',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: 'Matheus Vitor',
                          style: AppTextStyles.titleBold,
                        ),
                      ]),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/61215783?v=4',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ScoreCardWidget(),
          ),
        ],
      ),
    ),
  );
}