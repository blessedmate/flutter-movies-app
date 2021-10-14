import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Movies in cinema'),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Carrusel de peliculas
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              // Slider horizontal de peliculas
              MovieSlider(
                popularMovies: moviesProvider.popularMovies,
                sliderTitle: 'Trending',
              ),
            ],
          ),
        ));
  }
}
