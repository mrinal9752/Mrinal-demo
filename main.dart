import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'homePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: FlutterFlowTheme.of(context).primary,
                child: Text(
                  'JD',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Welcome back,',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.plusJakartaSans(),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'John Doe',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold,
                            ),
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).greyscale200,
                borderRadius: 100,
                buttonSize: 40,
                icon: Icon(
                  FFIcons.knotification,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () {
                  // Navigate to notifications
                  context.pushNamed('notifications');
                },
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Search Bar
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 100),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search doctors, specialties...',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).greyscale300,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator:
                              _model.textControllerValidator.asValidator(context),
                        ),
                      ),
                    ),

                    // AI Health Assistant Card
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                      child: InkWell(
                        onTap: () {
                          context.pushNamed('healthChatbot');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6B4EFF),
                                Color(0xFF9747FF),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons.smart_toy_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'AI Health Assistant',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              color: Colors.white,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Get instant symptom analysis & guidance',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(),
                                              color: Colors.white.withOpacity(0.9),
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Quick Actions
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quick Actions',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildQuickActionItem(
                                context,
                                icon: Icons.calendar_today,
                                label: 'Book\nAppointment',
                                color: Color(0xFF4CAF50),
                                onTap: () => context.pushNamed('bookAppointment'),
                              ),
                              _buildQuickActionItem(
                                context,
                                icon: Icons.video_call,
                                label: 'Video\nConsultation',
                                color: Color(0xFF2196F3),
                                onTap: () => context.pushNamed('videoCall'),
                              ),
                              _buildQuickActionItem(
                                context,
                                icon: Icons.chat_bubble_outline,
                                label: 'Chat with\nDoctor',
                                color: Color(0xFFFF9800),
                                onTap: () => context.pushNamed('chatList'),
                              ),
                              _buildQuickActionItem(
                                context,
                                icon: Icons.description_outlined,
                                label: 'My\nPrescriptions',
                                color: Color(0xFF9C27B0),
                                onTap: () => context.pushNamed('prescriptions'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Upcoming Appointments
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 32, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upcoming Appointments',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          InkWell(
                            onTap: () => context.pushNamed('appointmentHistory'),
                            child: Text(
                              'See All',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Appointment Card
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                      child: _buildAppointmentCard(context),
                    ),

                    // Available Doctors
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 32, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Available Doctors',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          InkWell(
                            onTap: () => context.pushNamed('doctorsList'),
                            child: Text(
                              'See All',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Doctors List
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 24),
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        separatorBuilder: (context, index) => SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          return _buildDoctorCard(context, index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            wrapWithModel(
              model: _model.navBarModel,
              updateCallback: () => safeSetState(() {}),
              child: NavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 75,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),
            SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.plusJakartaSans(),
                    fontSize: 11,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppointmentCard(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: FlutterFlowTheme.of(context).greyscale200,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF4CAF50).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Color(0xFF4CAF50),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Tomorrow, 10:00 AM',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.plusJakartaSans(),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  child: Text(
                    'DS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Sarah Johnson',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                              ),
                              fontSize: 14,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'Cardiologist • Video Consultation',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.plusJakartaSans(),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () {
                      context.pushNamed('videoCall');
                    },
                    text: 'Join Call',
                    icon: Icon(
                      Icons.video_call,
                      size: 18,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w600,
                            ),
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () {
                      context.pushNamed('chat');
                    },
                    text: 'Message',
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      size: 18,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w600,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).greyscale300,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard(BuildContext context, int index) {
    final doctors = [
      {
        'name': 'Dr. Michael Chen',
        'specialty': 'General Physician',
        'rating': '4.9',
        'reviews': '127',
        'available': true,
      },
      {
        'name': 'Dr. Emily Brown',
        'specialty': 'Dermatologist',
        'rating': '4.8',
        'reviews': '98',
        'available': true,
      },
      {
        'name': 'Dr. James Wilson',
        'specialty': 'Pediatrician',
        'rating': '4.9',
        'reviews': '215',
        'available': false,
      },
    ];

    final doctor = doctors[index];

    return InkWell(
      onTap: () {
        context.pushNamed('doctorProfile');
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: FlutterFlowTheme.of(context).greyscale200,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              child: Text(
                doctor['name'].toString().split(' ').map((e) => e[0]).take(2).join(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor['name'].toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                          ),
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    doctor['specialty'].toString(),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.plusJakartaSans(),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12,
                          letterSpacing: 0.0,
                        ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '${doctor['rating']} (${doctor['reviews']} reviews)',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.plusJakartaSans(),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 11,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: doctor['available'] == true
                    ? Color(0xFF4CAF50).withOpacity(0.1)
                    : FlutterFlowTheme.of(context).greyscale200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                doctor['available'] == true ? 'Available' : 'Busy',
                style: TextStyle(
                  color: doctor['available'] == true
                      ? Color(0xFF4CAF50)
                      : FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}