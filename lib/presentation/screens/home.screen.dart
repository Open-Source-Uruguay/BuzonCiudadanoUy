import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

//TODO: Usé muchos números mágicos, habría que quitarlos
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: navigationBar(),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            locationSection(),
            reportSection(),
          ],
        ),
      ),
    );
  }

  SizedBox reportSection() {
    return const SizedBox(
      width: 360,
      height: 396,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '¿Que querés reportar?',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SpaceGrotesk',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1.20,
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: 312,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReportCard(),
                SizedBox(width: 12),
                ReportCard(),
              ],
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: 312,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReportCard(),
                SizedBox(width: 12),
                ReportCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container locationSection() {
    return Container(
      width: 360,
      height: 56,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: Color(0xFFDFDFDF)),
          top: BorderSide(color: Color(0xFFDFDFDF)),
          right: BorderSide(color: Color(0xFFDFDFDF)),
          bottom: BorderSide(
            width: 0.50,
            color: Color(0xFFDFDFDF),
          ),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.pin_drop_outlined, size: 16),
          SizedBox(
            width: 300,
            height: 16,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Paysandú',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Cambiar',
                  style: TextStyle(
                    color: Color(0xFF0038A8),
                    fontSize: 12,
                    fontFamily: 'Space Grotesk',
                    fontWeight: FontWeight.w500,
                    height: 1.33,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  BottomNavigationBar navigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.content_paste_outlined),
          label: 'Reportes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Perfil',
        )
      ],
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
    );
  }
}

//TODO: Debería estar en un archivo separado
//TODO: Pasar texto por constructor
class ReportCard extends StatelessWidget {
  const ReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: 114,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.75,
            color: Color(0xFFDFDFDF),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: const Text(
        'Reporte',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SpaceGrotesk',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      ),
    );
  }
}
