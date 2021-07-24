import 'package:explore_hacks_2021/models/Opportunity.dart';
import 'package:explore_hacks_2021/screens/home/volunteer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VolunteerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Opportunity> oppList = [
      new Opportunity(
          address: 'address',
          avaiableSpots: 2,
          date: DateTime(2021),
          description: 'description',
          name: 'name'),
      new Opportunity(
          address: 'address',
          avaiableSpots: 2,
          date: DateTime(2021),
          description: 'description',
          name: 'name'),
    ];
    return Container(
      width: size.width,
      height: size.height * 0.68,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
              color: Color(0xFFF9E0FF), offset: Offset(0, 0), blurRadius: 10)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 37, left: size.width * 0.11),
            child: Text(
              "Opportunities near you",
              style: TextStyle(
                fontFamily: 'Geometria',
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 37, left: size.width * 0.11),
            child: Column(
              children: oppList.map((opp) => VolunteerItem(opp)).toList(),
            ),
          )
        ],
      ),
    );
  }
}