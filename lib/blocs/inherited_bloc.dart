import 'package:flutter/cupertino.dart';
import 'package:frieght_bro/blocs/search_bloc.dart';

class InheritedBlocs extends InheritedWidget {
  final Widget child;
  final SearchBloc searchBloc;

  InheritedBlocs({Key key, this.searchBloc, this.child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static InheritedBlocs of(BuildContext context) {
      return (context.inheritFromWidgetOfExactType(InheritedBlocs)
      as InheritedBlocs);
    }
}
