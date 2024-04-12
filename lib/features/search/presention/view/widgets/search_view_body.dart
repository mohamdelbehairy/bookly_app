import 'package:bokkly_app/core/utils/styles.dart';
import 'package:bokkly_app/features/search/presention/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: CustomSearchTextField()),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text('Search Result', style: Styles.textStyle18)),
        SizedBox(height: 8),
        SearchResultListView(),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(),
          );
        },
      ),
    );
  }
}
