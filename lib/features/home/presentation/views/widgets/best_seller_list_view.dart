import 'package:bokkly_app/core/widgets/custom_error_widget.dart';
import 'package:bokkly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bokkly_app/features/home/presentation/manager/newset_books/newset_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: state.books.length, (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(book: state.books[index]));
          }));
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errorMessage: state.errorMessage));
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
