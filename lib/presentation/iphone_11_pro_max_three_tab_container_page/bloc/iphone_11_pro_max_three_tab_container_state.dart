// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_three_tab_container_bloc.dart';

/// Represents the state of Iphone11ProMaxThreeTabContainer in the application.
class Iphone11ProMaxThreeTabContainerState extends Equatable {
  Iphone11ProMaxThreeTabContainerState({
    this.searchController,
    this.iphone11ProMaxThreeTabContainerModelObj,
  });

  TextEditingController? searchController;

  Iphone11ProMaxThreeTabContainerModel? iphone11ProMaxThreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone11ProMaxThreeTabContainerModelObj,
      ];
  Iphone11ProMaxThreeTabContainerState copyWith({
    TextEditingController? searchController,
    Iphone11ProMaxThreeTabContainerModel?
        iphone11ProMaxThreeTabContainerModelObj,
  }) {
    return Iphone11ProMaxThreeTabContainerState(
      searchController: searchController ?? this.searchController,
      iphone11ProMaxThreeTabContainerModelObj:
          iphone11ProMaxThreeTabContainerModelObj ??
              this.iphone11ProMaxThreeTabContainerModelObj,
    );
  }
}
