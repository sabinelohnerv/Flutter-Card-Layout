import 'package:flutter/material.dart';
import 'package:practico_1/custom/custom_text.dart';
import 'package:practico_1/models/designer.dart';

class DesignerItem extends StatelessWidget {
  const DesignerItem(this.designer, this.color, this.ranking, {Key? key})
      : super(key: key);

  final Designer designer;
  final LinearGradient color;
  final int ranking;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0,
        shadowColor: color.colors.first.withOpacity(0.4),
        child: cardContainer());
  }

  Container cardContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: color.colors.first.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: clipContainer(),
    );
  }

  ClipRRect clipContainer() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: color,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/${designer.image}"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 32.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText(designer.name, 16, true),
                          const SizedBox(
                            height: 4,
                          ),
                          CustomText("Title: ${designer.title}", 14, false),
                          const SizedBox(
                            height: 16,
                          ),
                          const Row(
                            children: [
                              Column(
                                children: [
                                  CustomText('2343', 12, false),
                                  CustomText('Popularity', 12, false),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CustomText('4736', 12, false),
                                  CustomText('Likes', 12, false),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  CustomText('136', 12, false),
                                  CustomText('Followed', 12, false),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(ranking.toString(), 18, true),
                      const SizedBox(
                        height: 4,
                      ),
                      const CustomText('Ranking', 12, false),
                    ],
                  ),
                ],
              ),
            ),
          ),
          positionedIconButton(),
          positionedCircle(),
        ],
      ),
    );
  }

  Positioned positionedIconButton() {
    return Positioned(
      top: -6, 
      right: 18, 
      child: IconButton(
        icon: const Icon(Icons.more_horiz),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }

  Positioned positionedCircle() {
    return Positioned(
      top: -20,
      right: -125,
      child: Container(
        width: 210,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.grey.shade50.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
