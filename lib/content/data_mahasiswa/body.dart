import 'dart:math';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List ranking = [
    {'class': 'A', 'total': 23},
    {'class': 'B', 'total': 14},
    {'class': 'C', 'total': 8},
    {'class': 'D', 'total': 7},
    {'class': 'E', 'total': 21},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Rekap Nilai'),
              tileColor: Colors.green[200],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartBar(
                  data: [
                    {
                      'id': 'Bar 1',
                      'data': [
                        {'domain': 'T. Antarmuka', 'measure': 5},
                        {'domain': 'Robotika', 'measure': 8},
                        {'domain': 'IoT', 'measure': 7},
                        {'domain': 'OOP', 'measure': 7},
                        {'domain': 'Project 2', 'measure': 6.5},
                        {'domain': 'Pemrograman Web', 'measure': 6.5},
                        {'domain': 'Komputer Vision', 'measure': 7.5},
                      ],
                    },
                  ],
                  yAxisTitle: 'Nilai',
                  xAxisTitle: 'Mata Kuliah',
                  measureMin: 0,
                  measureMax: 10,
                  minimumPaddingBetweenLabel: 1,
                  domainLabelPaddingToAxisLine: 16,
                  axisLineTick: 2,
                  axisLinePointTick: 2,
                  axisLinePointWidth: 10,
                  axisLineColor: Colors.blue,
                  measureLabelPaddingToAxisLine: 16,
                  barColor: (barData, index, id) => id == 'Bar 1'
                      ? Colors.blue.shade300
                      : Colors.blue.shade900,
                  barValue: (barData, index) => '${barData['measure']}%',
                  showBarValue: true,
                  barValuePosition: BarValuePosition.outside,
                  verticalDirection: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Rekap Kehadiran'),
              tileColor: Colors.purple[200],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartPie(
                  data: [
                    {'domain': 'Hadir', 'measure': 50},
                    {'domain': 'Tidak Hadir', 'measure': 20},
                    {'domain': 'Izin', 'measure': 5},
                    {'domain': 'Sakit', 'measure': 10},
                  ],
                  fillColor: (pieData, index) {
                    switch (pieData['domain']) {
                      case 'Hadir':
                        return Colors.green;
                      case 'Tidak Hadir':
                        return Colors.red;
                      case 'Izin':
                        return Colors.yellow;
                      case 'Sakit':
                        return Colors.blue;
                    }
                  },
                  pieLabel: (pieData, index) {
                    return "${pieData['domain']}:\n${pieData['measure']}%";
                  },
                  labelPosition: PieLabelPosition.outside,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}