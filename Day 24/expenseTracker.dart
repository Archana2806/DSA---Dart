/*
Build a Basic Expense Tracker (Single Page)
Create an app where users can log expenses, categorize them, and view totals—all within a single page.
Features:
✅ A TextField to enter the expense name.
✅ A TextField to enter the amount.
✅ A Dropdown to select the category (Food, Travel, Shopping, etc.).
✅ Display expenses in a ListView.
✅ Show the total amount spent across categories.
*/

// import 'package:flutter/material.dart';

// class ExpenseTrackerPage extends StatefulWidget {
//   @override
//   _ExpenseTrackerPageState createState() => _ExpenseTrackerPageState();
// }

// class _ExpenseTrackerPageState extends State<ExpenseTrackerPage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController amountController = TextEditingController();
//   String selectedCategory = "Food";
//   List<Map<String, dynamic>> expenses = [];

//   void addExpense() {
//     double amount = double.tryParse(amountController.text) ?? 0.0;
//     if (nameController.text.isNotEmpty && amount > 0) {
//       setState(() {
//         expenses.add({
//           "name": nameController.text,
//           "amount": amount,
//           "category": selectedCategory,
//         });
//         nameController.clear();
//         amountController.clear();
//       });
//     }
//   }

//   double getTotalExpenses() {
//     return expenses.fold(0.0, (sum, item) => sum + item["amount"]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Expense Tracker")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: "Expense Name"),
//             ),
//             TextField(
//               controller: amountController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: "Amount"),
//             ),
//             DropdownButton<String>(
//               value: selectedCategory,
//               items: ["Food", "Travel", "Shopping", "Other"]
//                   .map((category) => DropdownMenuItem(
//                         value: category,
//                         child: Text(category),
//                       ))
//                   .toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCategory = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(onPressed: addExpense, child: Text("Add Expense")),
//             SizedBox(height: 10),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: expenses.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(expenses[index]["name"]),
//                     subtitle: Text("${expenses[index]["amount"]} USD - ${expenses[index]["category"]}"),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 10),
//             Text("Total: ${getTotalExpenses()} USD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }