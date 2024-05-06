import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/view/dog_detail_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsDetailView extends StatelessWidget {
  const DogsDetailView({super.key});

  static String path = '/dogs-detail-view';
  static String name = 'dogs-detail-view';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DogsBloc, DogsState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(state.dog?.name ?? "No Data"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO(Daniel): Replace with CachedNetworkImage for performance improvement
                Image.network(
                  state.dog?.image ?? '',
                  width: MediaQuery.of(context).size.width - 100,
                  errorBuilder: (context, error, stackTrace) {
                    return const CircularProgressIndicator();
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (state.dog != null) DogDetailItemsWidget(dog: state.dog!)
          ],
        )),
      );
    });
  }
}
