import 'package:flutter/material.dart';
import 'package:mentis/widgets/gridList.dart';
import 'package:mentis/widgets/horizontalList.dart';
import 'package:mentis/widgets/learn_card.dart';

class MissionsPage extends StatelessWidget {
  const MissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        controller: scrollController, // Attach the vertical ScrollController
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GridList(
              crossAxisCount: 1,
              aspectRatio: 3.5,
              spacing: 8,
              itemCount: 3,
              title: "Demandes d'apprentissage",
              child: LearnCard(),
            ),
            GridList(
              crossAxisCount: 1,
              aspectRatio: 3.5,
              spacing: 8,
              itemCount: 1,
              title: "Apprentissages en cours",
              child: LearnCard(
                showInteractions: false,
              ),
            ),
            GridList(
              crossAxisCount: 1,
              aspectRatio: 3.5,
              spacing: 8,
              itemCount: 3,
              title: "Apprentissages terminés",
              child: LearnCard(
                showInteractions: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
