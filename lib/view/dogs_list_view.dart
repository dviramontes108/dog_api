import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/view/dog_detail_items_widget.dart';
import 'package:doc_ceo_api/view/dogs_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DogsListView extends StatelessWidget {
  const DogsListView({super.key});

  static String path = '/';
  static String name = 'dogs-list-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dogs List"),
      ),
      body: BlocBuilder<DogsBloc, DogsState>(builder: (context, state) {
        if (state.status == DogsStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == DogsStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage ?? ''),
          ));
          return const Icon(Icons.error);
        }

        return ListView.builder(
            itemCount: state.dogs.length,
            itemBuilder: (BuildContext context, int index) {
              return Semantics(
                label: 'Dog List Item',
                child: ListTile(
                  title: Text(state.dogs[index].name),
                  subtitle: DogDetailItemsWidget(dog: state.dogs[index]),
                  onTap: () {
                    context.read<DogsBloc>().add(DogDetail(state.dogs[index]));
                    context.push(DogsDetailView.path);
                  },
                ),
              );
            });
      }),
    );
  }
}
