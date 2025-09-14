import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/custom_list_view/custom_list_view.dart';
import 'package:clean_arc/core/presentation/widget/custom_loading.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:flutter/material.dart';

class PaginatedListView<T> extends StatefulWidget {
  final ScrollController scrollController;
  final Function(int? page) onPaginate;
  PaginatedState<T>? paginatedList;
  final Widget? Function(BuildContext, int) itemView;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final bool enabledPagination;
  EdgeInsetsGeometry? padding;
  Axis? scrollDirection;
  SuccessDataKeyEnum successDataKeyEnum;

  PaginatedListView({
    super.key,
    required this.scrollController,
    required this.onPaginate,
    required this.paginatedList,
    required this.itemView,
    this.enabledPagination = true,
    this.separatorBuilder,
    this.padding,
    this.successDataKeyEnum = SuccessDataKeyEnum.value,
  });

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  bool _isLoading = false;
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      final int totalCount = widget.paginatedList?.success?.count ?? 0;
      if (widget.successDataKeyEnum == SuccessDataKeyEnum.value) {
        currentLength = widget.paginatedList?.success?.value?.length ?? 0;
      } else {
        currentLength = widget.paginatedList?.success?.data?.length ?? 0;
      }

      if (widget.scrollController.position.pixels ==
          widget.scrollController.position.maxScrollExtent &&
          currentLength < totalCount &&
          !_isLoading &&
          widget.enabledPagination) {
        _paginate();
      }
    });
  }

  void _paginate() async {
    setState(() => _isLoading = true);
    currentPage++; // بنفترض التصفح بالصفحة (page 2, 3, ...)
    await widget.onPaginate(currentPage);
    setState(() => _isLoading = false);
  }

  int currentLength = 00;

  @override
  Widget build(BuildContext context) {
    return ResponseBuilderWidget(
      isLoading: widget.paginatedList?.isLoading,
      failure: widget.paginatedList?.isError,
      onRetry: () {
        widget.onPaginate(currentPage);
      },
      loadingBuilder: CustomListViewBuilder(
        controller: widget.scrollController,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: widget.padding,
        itemBuilder: widget.itemView,
        separatorBuilder: widget.separatorBuilder,
        itemCount: 25,
      ),
      childBuilder: () {
        if (widget.successDataKeyEnum == SuccessDataKeyEnum.value) {
          currentLength = widget.paginatedList?.success?.value?.length ?? 0;
        } else {
          currentLength = widget.paginatedList?.success?.data?.length ?? 0;
        }


        if (widget.scrollDirection == Axis.horizontal) {
          return Row(
            children: [
              CustomListViewBuilder(
                scrollDirection: widget.scrollDirection,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: widget.padding,
                itemBuilder: widget.itemView,
                separatorBuilder: widget.separatorBuilder,
                itemCount: currentLength ?? 0,
              ),
              Center(
                child: Padding(
                  padding: (_isLoading)
                      ? const EdgeInsets.all(AppDimensions.paddingSizeSmall)
                      : EdgeInsets.zero,
                  child: _isLoading ? CustomLoading() : const SizedBox(),
                ),
              ),
            ],
          );
        }
        return
          Column(
            children: [
              CustomListViewBuilder(
                controller: widget.scrollController,
                scrollDirection: widget.scrollDirection,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: widget.padding,
                itemBuilder: widget.itemView,
                separatorBuilder: widget.separatorBuilder,
                itemCount: currentLength ?? 0,
              ),
              Center(
                child: Padding(
                  padding: (_isLoading)
                      ? const EdgeInsets.all(AppDimensions.paddingSizeSmall)
                      : EdgeInsets.zero,
                  child: _isLoading ? CustomLoading() : const SizedBox(),
                ),
              )
              ,
            ]
            ,
          );
      },
    );
  }
}
