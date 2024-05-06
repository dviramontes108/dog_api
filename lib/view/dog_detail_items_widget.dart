import 'package:doc_ceo_api/model/dog.dart';
import 'package:flutter/material.dart';

class DogDetailItemsWidget extends StatelessWidget {
  const DogDetailItemsWidget({super.key, required this.dog});
  final Dog dog;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: dog.breeds.isEmpty
          ? const [Text("No Data")]
          : dog.breeds.map((e) {
              return Padding(
                padding: const EdgeInsets.only(right: 5, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(e),
                  ),
                ),
              );
            }).toList(),
    );
  }
}
