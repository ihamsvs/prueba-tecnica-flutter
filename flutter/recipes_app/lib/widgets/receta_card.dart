import 'package:flutter/material.dart';
import '../models/recetas.dart';

class RecetaCard extends StatelessWidget {
  final Receta receta;

  const RecetaCard({super.key, required this.receta});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              receta.medication,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text("Fecha de emisión: ${receta.issuedAt}"),
            Text("Médico: ${receta.doctor}"),
            if (receta.notes.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                "Notas: ${receta.notes}",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
