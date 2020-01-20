import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdg_calavi_ui/util/consts.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calendarController = CalendarController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "December",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Container(
                  height: 3,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                SizedBox(height: 20,),

                TableCalendar(
                  availableGestures: AvailableGestures.none,
                  headerVisible: false,
                  calendarStyle: CalendarStyle(
                    selectedColor: Theme.of(context).primaryColor,
                    todayColor: Theme.of(context).primaryColor.withOpacity(0.7),
                    markersColor: Colors.brown[700],
                    outsideDaysVisible: true,
                    weekdayStyle: TextStyle(
                      color: Colors.white,
                    ),
                    weekendStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  calendarController: _calendarController,
                  builders: CalendarBuilders(
                    selectedDayBuilder: (_, t, e){
                      return Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${t.day}",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),


          Flexible(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
