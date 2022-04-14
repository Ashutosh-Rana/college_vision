// // ignore: import_of_legacy_library_into_null_safe
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';


// final dummySnapshot = [
//   {"name": "Filip", "attendance": 15},
//   {"name": "Abraham", "attendance": 14},
//   {"name": "Richard", "attendance": 11},
//   {"name": "Ike", "attendance": 10},
//   {"name": "Justin", "attendance": 1},
// ];


// class AttendancePage extends StatefulWidget {
//   @override
//   _AttendancePageState createState() {
//     return _AttendancePageState();
//   }
// }

// class _AttendancePageState extends State<AttendancePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle:true, title:const Text('Voting Panel')),
//       body: _buildBody(context),
//     );
//   }

//   Widget _buildBody(BuildContext context) {
//   return StreamBuilder<QuerySnapshot>(
//     stream: Firestore.instance.collection('student').snapshots(),
//     builder: (context, snapshot) {
//       if (!snapshot.hasData) return const LinearProgressIndicator();

//       return _buildList(context, snapshot.data!.documents);
//     },
//   );
//   }

//   Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//     return ListView(
//       padding: const EdgeInsets.only(top: 20.0),
//       children: snapshot.map((data) => _buildListItem(context, data)).toList(),
//     );
//   }

//   Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
//     final record = Record.fromSnapshot(data);

//     return Padding(
//       key: ValueKey(record.name),
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child: ListTile(
//           title: Text(record.name),
//           trailing: Text(record.attendance.toString()),
//           onTap: () => print(record),
//         ),
//       ),
//     );
//   }
// }

// class Record {
//   final String name;
//   final int attendance;
//   final DocumentReference reference;

//   Record.fromMap(Map<dynamic, dynamic> map, {required this.reference})
//       : assert(map['name'] != null),
//         assert(map['attendance'] != null),
//         name = map['name'],
//         attendance = map['attendance'];

//   Record.fromSnapshot(DocumentSnapshot snapshot)
//       : this.fromMap(snapshot.data, reference: snapshot.reference);

//   @override
//   String toString() => "Record<$name:$attendance>";
// }