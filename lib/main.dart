import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'El Panecillo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'lib/assets/panecillo.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Descripción del Panecillo: El Panecillo es una colina de 200 metros de altura ubicada entre el sur y el centro de Quito. Su cima, a 3,016 metros sobre el nivel del mar, ofrece impresionantes vistas panorámicas de la ciudad. En la cima se encuentra una estatua de la Virgen de Quito, construida en 1975.',
              ),
              TitleSection(
                name: 'La Ronda',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'lib/assets/laronda.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Descripción de La Ronda: La Ronda es una calle histórica en el centro de Quito, conocida por su encanto colonial y su animada vida nocturna. La calle está llena de tiendas artesanales, restaurantes y bares que ofrecen música en vivo. Es un lugar ideal para pasear y disfrutar de la cultura y tradiciones ecuatorianas, especialmente durante las festividades locales.',
              ),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'lib/assets/mitad.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Descripción de Mitad del Mundo: Este monumento marca la ubicación de la línea ecuatorial, donde se puede estar con un pie en cada hemisferio. El complejo incluye un museo que explica la importancia geográfica y cultural de la línea ecuatorial, así como exhibiciones sobre la ciencia y la historia de las culturas indígenas del Ecuador.',
              ),
              TitleSection(
                name: 'Teleférico',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'lib/assets/teleferico.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Descripción del Teleférico: El Teleférico de Quito, conocido como TelefériQo, es una de las atracciones turísticas más impresionantes de la ciudad. Este teleférico lleva a los visitantes desde la base en la ciudad hasta la estación de Cruz Loma en el volcán Pichincha, alcanzando una altitud de 3,945 metros. El viaje de aproximadamente 20 minutos ofrece vistas espectaculares de Quito y los Andes circundantes. ',
              ),
              TitleSection(
                name: 'Parque La Carolina',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
                image: 'lib/assets/carolina.jpg',
              ),
              ButtonSection(),
              TextSection(
                description: 'Descripción del Parque La Carolina: El Parque La Carolina es uno de los espacios verdes más grandes y populares de Quito, ideal para actividades recreativas y deportivas. Ubicado en el corazón de la ciudad, este parque ofrece una variedad de instalaciones que incluyen canchas de fútbol, baloncesto y voleibol, áreas de patinaje y ciclismo, y un lago artificial donde se pueden alquilar botes.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
