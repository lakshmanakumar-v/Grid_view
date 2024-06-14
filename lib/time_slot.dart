import 'package:flutter/material.dart';
import 'container_scroll.dart';
import 'time_slap.dart';

//Second Application pg-2
class TimeSlot extends StatelessWidget {
  const TimeSlot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            //firtst create a text and create a column with the text
            Text('TimeSlot'),
            SizedBox(
              height: 5,
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_circle_left_outlined),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //divider is used inside the children
              const Divider(
                color: Colors.black,
                //hight can be mentioned to change the difference
                height: 2,
              ),

              const SizedBox(
                height: 40,
              ),
              const Text(
                'Select Date',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //inside the column we can create a row
              //inside a row we create a container
              //listview ,children,
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContainerScroll(
                      text1: 'Tue',
                      text2: '11',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Wed',
                      text2: '12',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Thu',
                      text2: '13',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Fri',
                      text2: '14',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Sat',
                      text2: '15',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Sun',
                      text2: '16',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ContainerScroll(
                      text1: 'Mon',
                      text2: '17',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Select Time',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10,
                childAspectRatio: 2.0,
                children: const [
                  TimeSlap(
                    text_1: '05 AM - 07 Am',
                  ),
                  TimeSlap(
                    text_1: '07 AM - 09 Am',
                  ),
                  TimeSlap(
                    text_1: '09 AM - 10 Am',
                  ),
                  TimeSlap(
                    text_1: '12 PM - 02 Pm',
                  ),
                  TimeSlap(
                    text_1: '02 PM - 04 Pm',
                  ),
                  TimeSlap(
                    text_1: '04 PM - 06 Pm',
                  ),
                  TimeSlap(
                    text_1: '06 PM - 10 Pm',
                  ),
                  TimeSlap(
                    text_1: '10 PM - 12 Pm',
                  ),
                  TimeSlap(
                    text_1: '12 AM - 04 Am',
                  ),
                  TimeSlap(
                    text_1: '04 AM - 06 Am',
                  ),
                  TimeSlap(
                    text_1: '06 AM - 10 Am',
                  ),
                  TimeSlap(
                    text_1: '10 AM - 12 Pm',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: const Text('Go Back'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
