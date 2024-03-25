import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorPic extends StatelessWidget {
  const DoctorPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (120 / 428) *
          MediaQuery.of(context).size.width, // Largeur du conteneur
      height: (120 / 428) *
          MediaQuery.of(context).size.width, // Hauteur du conteneur
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(18), // Rayon pour les coins arrondis
        image: const DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // URL de l'image
          fit: BoxFit.cover, // Ajuste l'image au conteneur sans la déformer
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: EdgeInsets.zero, // Marge à gauche et en bas
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(
                242, 242, 242, 1), // Couleur de fond de l'indicateur
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              topRight: Radius.circular(18),
            ), // Coins arrondis pour l'indicateur
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 25,
              ), // Icône d'étoile
              const SizedBox(width: 5), // Espace entre l'icône et le score
              Text(
                '4.7',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
