import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DayReport extends StatelessWidget {
  final String label;
  final Tab tab;
  DayReport(this.label, this.tab);

  // # of exercises
  // # of sets logged
  // # of reps logged
  // Weights used
  // Total exertion logged
  // Total training time for that session

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(237, 237, 237, 1),
      child: ListView(
        //key: PageStorageKey<String>(label),
        //tab: tab,
        children: [
          SizedBox(
            height: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Goals:',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        'Exercises: 4',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Sets: 10',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Reps: 100',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ]),
                CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 10.0,
                  percent: .64,
                  center: new Text("65%"),
                  progressColor: Colors.redAccent,
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'You did:',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        'Exercises: 3',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Sets: 8',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Reps: 65',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ])
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            endIndent: 20,
            indent: 20,
            height: 50,
          ),
          SizedBox(
            height: 50,
            child: Center(
              child: Text(
                'Daily Report',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  'Bench Press',
                  style: Theme.of(context).textTheme.headline3,
                ),
              )),
          SizedBox(
              height: 200,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('Set',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('1', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('2', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('3', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('4', style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Reps')),
                    DataCell(Text('10')),
                    DataCell(Text('8')),
                    DataCell(Text('10')),
                    DataCell(Text('16')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Weight')),
                    DataCell(Text('140')),
                    DataCell(Text('160')),
                    DataCell(Text('180')),
                    DataCell(Text('140')),
                  ]),
                ],
              )),
          SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  'Squats',
                  style: Theme.of(context).textTheme.headline3,
                ),
              )),
          SizedBox(
              height: 200,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('Set',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('1', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('2', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('3', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('4', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('5', style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Reps')),
                    DataCell(Text('10')),
                    DataCell(Text('8')),
                    DataCell(Text('10')),
                    DataCell(Text('16')),
                    DataCell(Text('10'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Weight')),
                    DataCell(Text('140')),
                    DataCell(Text('160')),
                    DataCell(Text('180')),
                    DataCell(Text('140')),
                    DataCell(Text('100'))
                  ]),
                ],
              )),
          SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(
                  'Dead Lift',
                  style: Theme.of(context).textTheme.headline3,
                ),
              )),
          SizedBox(
              height: 200,
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('Set',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('1', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('2', style: Theme.of(context).textTheme.bodyText1),
                  ),
                  DataColumn(
                    label:
                        Text('3', style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Reps')),
                    DataCell(Text('10')),
                    DataCell(Text('8')),
                    DataCell(Text('10')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Weight')),
                    DataCell(Text('140')),
                    DataCell(Text('160')),
                    DataCell(Text('180')),
                  ]),
                ],
              )),
          SizedBox(
            height: 200,
            child: Center(
              child: Text('other daily data will be kept here'),
            ),
          )
        ],
      ),
    );
  }
}
