import 'package:expenses_dashboard/models/AllExpensesItemModel.dart';
import 'package:flutter/cupertino.dart';

import 'Inactive_and_activeAllExpensesItem.dart';

class Allexpensesitem extends StatelessWidget {
  const Allexpensesitem({super.key, required this.allExpensesItemModel, required this.isActive});
final AllExpensesItemModel allExpensesItemModel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?AciveAllexpensesitem(allExpensesItemModel: allExpensesItemModel,)
    :InAciveAllexpensesitem(allExpensesItemModel: allExpensesItemModel);
  }
}
