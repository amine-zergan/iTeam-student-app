import 'package:flutter/material.dart';
import 'package:items_app/core/constant/palette_color.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:items_app/features/dashboard/presentation/components/card_component.dart';

class DashboardPageView extends StatelessWidget {
  const DashboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 10,
        title: Text(
          "Tableau de Bord",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            MasonryGridView(
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ),
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                NoteComponentView(
                  heigth: size.height * 0.3,
                  color: Colors.white,
                  title: "planification",
                  icon: Icons.calendar_month,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.15,
                  color: Colors.white,
                  title: "Attestation & Autorisation",
                  icon: Icons.real_estate_agent_outlined,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.3,
                  color: Colors.white,
                  title: "Notes",
                  icon: Icons.add_task_outlined,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.33 + 10,
                  color: Colors.white,
                  title: "Assiduité",
                  icon: Icons.bar_chart_sharp,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.15,
                  color: Colors.white,
                  title: "Messagerie",
                  icon: Icons.message_outlined,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.13,
                  color: Colors.white,
                  title: "Payment",
                  icon: Icons.payments_outlined,
                  onPressed: () {},
                ),
                NoteComponentView(
                  heigth: size.height * 0.13,
                  color: Colors.white,
                  title: "Fiches Matierés",
                  icon: Icons.school_outlined,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
