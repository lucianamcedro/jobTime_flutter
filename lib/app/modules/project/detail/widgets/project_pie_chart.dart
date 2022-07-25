import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProjectPieChart extends StatelessWidget {
  final int projectEstimate;
  final int totalTask;

  const ProjectPieChart(
      {Key? key, required this.projectEstimate, required this.totalTask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final residual = (projectEstimate - totalTask);
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        fit: StackFit.loose,
        children: [
          PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                    value: totalTask.toDouble(),
                    color: Theme.of(context).primaryColor,
                    showTitle: true,
                    title: '${totalTask}h',
                    titleStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                PieChartSectionData(
                  value: residual.toDouble(),
                  color: Theme.of(context).primaryColorLight,
                  showTitle: true,
                  title: '${residual}h',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                '${projectEstimate}h',
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
