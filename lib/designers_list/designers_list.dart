import 'package:flutter/material.dart';
import 'package:practico_1/designers_list/designer_item.dart';
import 'package:practico_1/models/designer.dart';

class DesignersList extends StatelessWidget {
  const DesignersList({
    super.key,
    required this.designers,
  });

  final List<Designer> designers;
  @override
  Widget build(BuildContext context) {
    final List<LinearGradient> gradients = [
      LinearGradient(colors: [Colors.blueAccent.shade100.withOpacity(0.8), Colors.indigo.shade400.withOpacity(0.8)]),
      LinearGradient(colors: [Colors.amber.shade400.withOpacity(0.8), Colors.orange.shade400.withOpacity(0.8)]),
      LinearGradient(colors: [Colors.pink.shade400.withOpacity(0.8), Colors.pink.shade700.withOpacity(0.8)]),
      LinearGradient(colors: [Colors.purple.withOpacity(0.8), Colors.deepPurple.withOpacity(0.8)]),
      LinearGradient(colors: [Colors.greenAccent.withOpacity(0.8), Colors.green.withOpacity(0.8)]),
    ];

    return ListView.builder(
      itemCount: designers.length,
      itemBuilder: (ctx, index) => DesignerItem(
          designers[index], gradients[index % gradients.length], index + 1),
    );
  }
}
