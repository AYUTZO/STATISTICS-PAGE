import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts  ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  static var chartdisplay;

  void initState()
  {
    setState(() {
      var data =[
        addcharts("SUN",10),
        addcharts("MON",40),
        addcharts("TUE",50),
        addcharts("WED",40),
        addcharts("THU",50),
        addcharts("FRI",60),
        addcharts("SAT",50),

      ];

      var series = [charts.Series
        (
        domainFn: (addcharts addcharts,_) => addcharts.label,
        measureFn: (addcharts addcharts,_) => addcharts.value,
        id: 'addcharts',
        data: data,

      ),];
      chartdisplay = charts.BarChart(
        series,
        animationDuration: Duration(microseconds: 2000),
      );

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics',style: TextStyle(color: Color(0xff616161)),),
        centerTitle: true,
        backgroundColor: Color(0xffeeeeee),
        elevation: 0,
      ),

      body: Column(
        children: [
          new Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffeeeeee),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff9e9e9e),
                      blurRadius:60,
                  offset: Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: chartdisplay,
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0,40,0,0),
             child: Container(
                 height: 418,
                 width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,15,0),
                  child: GridView.count(crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/run.png'),
                            width: 200,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 105, 40, 10),
                            child: Text('Steps',style:TextStyle(
                              fontSize:25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 135, 30, 10),
                            child: Text('4000-10000 ',style:TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/calories.png'),
                            width: 200,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 105, 30, 10),
                            child: Text('Calories',style:TextStyle(
                              fontSize:25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 135, 40, 10),
                            child: Text('2000-2500',style:TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/drink.png'),
                            width: 200,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 105, 40, 10),
                            child: Text('Water',style:TextStyle(
                              fontSize:25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 135, 40, 10),
                            child: Text('3-4 Litres',style:TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/sleep.png'),
                            width: 200,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 105, 40, 10),
                            child: Text('Sleep',style:TextStyle(
                              fontSize:25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 135, 40, 10),
                            child: Text('7-9 Hours',style:TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),
                ),
             ),
           )
        ],
      ),
    );
  }
}

class addcharts
{
  final String label;
  final int value;
  addcharts(this.label,this.value);
}


