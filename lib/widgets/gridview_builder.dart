import 'package:flutter/material.dart';
import 'grid_icons.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({
    Key key,
}) : super(key: key);


  final int gridCellTotalNumber = 100;

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons().getIconList(gridCellTotalNumber);

    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        print(index);
        return Card(
          color: Colors.lightGreen.shade50,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              print('Row $index');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[index],
                  size: 48.0,
                  color: Colors.lightGreen,),
                Divider(),
                Text(
                    'Index $index',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: gridCellTotalNumber,);
  }
}
