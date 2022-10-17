import 'package:facebook_clone/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/story_card.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to Story',
            storyImages: one,
            avathar: networkOne,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Rameesh kk',
            storyImages: statusOne,
            avathar: networkTwo,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Nidhin KK',
            storyImages: networkThree,
            avathar: networkThree,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Adarsh',
            storyImages: networkFive,
            avathar: networkFive,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Raleesh',
            storyImages: statusOne,
            avathar: networkFour,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Sarang',
            storyImages: networkOne,
            avathar: networkOne,
            createStoryStatus: false,
            displayBorder: true,
          )
        ],
      ),
    );
  }
}
