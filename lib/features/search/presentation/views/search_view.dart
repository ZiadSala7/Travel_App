import 'package:flutter/material.dart';
import 'package:travel_app/core/widgets/custom_button.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../../splash/presentation/views/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import 'car_reservation_view.dart';

class SearchView extends StatefulWidget {
  final int initialTab;
  static const String id = 'searchView';
  const SearchView({super.key, this.initialTab = 0});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.initialTab, // ✅ هنا السحر
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: AppLogo(),
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            indicatorColor: AppColors.deepOrange,
            labelColor: AppColors.deepOrange,
            tabs: [
              Tab(text: S.of(context).car, icon: Icon(Icons.car_rental)),
              Tab(
                text: S.of(context).flights,
                icon: Icon(Icons.airplanemode_active),
              ),
              Tab(
                text: S.of(context).hotel,
                icon: Icon(Icons.home_work_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            CarReservationView(),
            BookFlightScreen(),
            Text('Hotels here'),
          ],
        ),
      ),
    );
  }
}

class BookFlightScreen extends StatefulWidget {
  const BookFlightScreen({super.key});

  @override
  State<BookFlightScreen> createState() => _BookFlightScreenState();
}

class _BookFlightScreenState extends State<BookFlightScreen> {
  final fromController = TextEditingController(text: "Lahore");
  final toController = TextEditingController(text: "Karachi");
  DateTime? departureDate;
  DateTime? returnDate;
  String travellers = "1 Adult";
  String flightClass = "Economy";
  int selectedTab = 0;

  final tabs = ["One way", "Round", "Multicity"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTabs(),
            const SizedBox(height: 16),
            _buildFormCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(tabs.length, (index) {
          final isSelected = index == selectedTab;
          return GestureDetector(
            onTap: () => setState(() => selectedTab = index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                tabs[index],
                style: AppTextStyles.text16med.copyWith(color: AppColors.black),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildFormCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          _buildTextField(
            label: "From",
            icon: Icons.flight_takeoff,
            controller: fromController,
          ),
          const SizedBox(height: 12),
          _buildTextField(
            label: "To",
            icon: Icons.flight_land,
            controller: toController,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildDateField(
                  context: context,
                  label: "Departure",
                  date: departureDate,
                  onSelect: (picked) => setState(() => departureDate = picked),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: selectedTab == 0
                    ? _buildDisabledField(label: "Return")
                    : _buildDateField(
                        context: context,
                        label: "Return",
                        date: returnDate,
                        onSelect: (picked) =>
                            setState(() => returnDate = picked),
                      ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildTravellerDropdown()),
              const SizedBox(width: 12),
              Expanded(child: _buildClassDropdown()),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onPressed: () {},
              txt: S.of(context).Search,
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    required TextEditingController controller,
  }) {
    return TextFormField(
      style: TextStyle(color: AppColors.black),
      controller: controller,
      decoration: InputDecoration(
        labelStyle: AppTextStyles.text16Reg.copyWith(
          color: AppColors.charcoalGray,
        ),
        labelText: label,
        filled: true,
        fillColor: AppColors.fillClr,
        prefixIcon: Icon(icon, color: AppColors.deepOrange),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildDateField({
    required BuildContext context,
    required String label,
    required DateTime? date,
    required ValueChanged<DateTime> onSelect,
  }) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now().add(const Duration(days: 1)),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );
        if (picked != null) onSelect(picked);
      },
      child: AbsorbPointer(
        child: TextFormField(
          style: TextStyle(color: AppColors.black),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.calendar_today_outlined,
              color: AppColors.deepOrange,
            ),
            hintText: date != null
                ? "${date.day}/${date.month}/${date.year}"
                : "Select Date",
            hintStyle: TextStyle(color: AppColors.black),
            filled: true,
            fillColor: AppColors.fillClr,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.deepOrange),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyShade, width: 0),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDisabledField({required String label}) {
    return TextFormField(
      enabled: false,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: const Icon(Icons.add, color: Colors.grey),
        hintText: "Add Return",
        labelStyle: TextStyle(color: AppColors.greyShade),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Widget _buildTravellerDropdown() {
    return DropdownButtonFormField<String>(
      value: travellers,
      items: const [
        DropdownMenuItem(value: "1 Adult", child: Text("1 Adult")),
        DropdownMenuItem(value: "2 Adults", child: Text("2 Adults")),
        DropdownMenuItem(value: "3 Adults", child: Text("3 Adults")),
      ],
      onChanged: (val) => setState(() => travellers = val!),
      style: TextStyle(color: AppColors.charcoalGray),
      decoration: InputDecoration(
        labelText: "Traveller",
        labelStyle: TextStyle(color: AppColors.black),
        prefixIcon: const Icon(
          Icons.person_outline,
          color: AppColors.deepOrange,
        ),
        filled: true,
        fillColor: AppColors.fillClr,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildClassDropdown() {
    return DropdownButtonFormField<String>(
      style: TextStyle(color: AppColors.charcoalGray),
      value: flightClass,
      items: const [
        DropdownMenuItem(value: "Economy", child: Text("Economy")),
        DropdownMenuItem(value: "Business", child: Text("Business")),
        DropdownMenuItem(value: "First", child: Text("First")),
      ],
      onChanged: (val) => setState(() => flightClass = val!),
      decoration: InputDecoration(
        labelText: "Class",
        labelStyle: AppTextStyles.text16Reg.copyWith(color: AppColors.black),
        prefixIcon: const Icon(
          Icons.airline_seat_recline_normal_outlined,
          color: AppColors.deepOrange,
        ),
        filled: true,
        fillColor: AppColors.fillClr,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
