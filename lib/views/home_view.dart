import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:my_weather_app/views/search_view.dart';
import 'package:my_weather_app/widgets/no_weather_body.dart';
import 'package:my_weather_app/widgets/wether_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SearchView(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is GetWeatherInitial) {
              return const NoWeatherBody();
            } else if (state is GetWeatherLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetWeatherSuccess) {
              return  WeatherInfo(weather: state.weatherModel,);
            } else {
              return const Text('Oops There Was An Error , Try Later');
            }
          },
        ),
      );
  }
}
