import 'package:flutter/material.dart';


class TimeSlotSelectionScreen extends StatefulWidget {
  @override
  _TimeSlotSelectionScreenState createState() => _TimeSlotSelectionScreenState();
}

class _TimeSlotSelectionScreenState extends State<TimeSlotSelectionScreen> {
  String? selectedTime;

  final Map<String, List<String>> timeSlots = {
    "Morning Slots": ["09:00 AM", "09:30 AM", "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM"],
    "Afternoon Slots": ["02:00 PM", "02:30 PM", "03:00 PM", "03:30 PM", "04:00 PM", "04:30 PM"],
    "Evening Slots": ["08:00 PM", "08:30 PM", "09:00 PM", "09:30 PM", "10:00 PM", "10:30 PM"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select a Time Slot")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: timeSlots.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.key,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: entry.value.map((time) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ChoiceChip(
                        label: Text(time),
                        selected: selectedTime == time,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedTime = selected ? time : null;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 10),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
