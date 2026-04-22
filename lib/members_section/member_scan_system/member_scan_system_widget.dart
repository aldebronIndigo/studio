import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/bottom_sheets/dropdown_main_menu/dropdown_main_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'member_scan_system_model.dart';
export 'member_scan_system_model.dart';

class MemberScanSystemWidget extends StatefulWidget {
  const MemberScanSystemWidget({
    super.key,
    required this.refClub,
  });

  final ClubRecord? refClub;

  static String routeName = 'memberScanSystem';
  static String routePath = '/memberScanSystem';

  @override
  State<MemberScanSystemWidget> createState() => _MemberScanSystemWidgetState();
}

class _MemberScanSystemWidgetState extends State<MemberScanSystemWidget>
    with TickerProviderStateMixin {
  late MemberScanSystemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MemberScanSystemModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.pinCodeFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.5, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.5, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? 'assets/images/luke-chesser-hQo6Uyo4nBg-unsplash.jpg'
                    : 'assets/images/christina-deravedisian-7MNSz22BM00-unsplash.jpg',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Container(
                              width: 55.0,
                              height: 55.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Container(
                                  width: 200.0,
                                  height: 200.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/aldebron_Logo_(52).png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                FFIcons.kmessageCopy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context
                                    .pushNamed(NotificationsWidget.routeName);
                              },
                            ).animateOnPageLoad(animationsMap[
                                'iconButtonOnPageLoadAnimation1']!),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                FFIcons.kmenu1Copy,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: DropdownMainMenuWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ).animateOnPageLoad(animationsMap[
                                'iconButtonOnPageLoadAnimation2']!),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 15.0, 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.chevron_left,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Scan for Referral',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          font: GoogleFonts.roboto(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 12.0),
                            child: Text(
                              'Membership are available exclusively through Reference and subject of approval by Club Administration. ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 25.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.hidescanner == false)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 3.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 200.0,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFDAEEFA),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Icon(
                                                      Icons.qr_code_2_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 165.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 12.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  _model.scannedReturn =
                                                      await FlutterBarcodeScanner
                                                          .scanBarcode(
                                                    '#C62828', // scanning line color
                                                    'Cancel', // cancel button text
                                                    true, // whether to show the flash icon
                                                    ScanMode.QR,
                                                  );

                                                  _model.foundCP =
                                                      await queryChannelPartnersRecordOnce(
                                                    parent: widget
                                                        .refClub?.reference,
                                                    queryBuilder:
                                                        (channelPartnersRecord) =>
                                                            channelPartnersRecord
                                                                .where(
                                                      'uniqueCPCode',
                                                      isEqualTo:
                                                          _model.scannedReturn,
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  _model.foundLead =
                                                      await queryLeadsRecordOnce(
                                                    parent: widget
                                                        .refClub?.reference,
                                                    queryBuilder:
                                                        (leadsRecord) =>
                                                            leadsRecord.where(
                                                                Filter.or(
                                                      Filter(
                                                        'LeadPhone',
                                                        isEqualTo:
                                                            currentPhoneNumber,
                                                      ),
                                                      Filter(
                                                        'leadEmail',
                                                        isEqualTo:
                                                            currentUserEmail,
                                                      ),
                                                    )),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);

                                                  var membersClubRecordReference =
                                                      MembersClubRecord
                                                          .createDoc(widget
                                                              .refClub!
                                                              .reference);
                                                  await membersClubRecordReference
                                                      .set(
                                                          createMembersClubRecordData(
                                                    refUser:
                                                        currentUserReference,
                                                    name:
                                                        currentUserDisplayName,
                                                    email: _model
                                                        .foundLead?.leadEmail,
                                                    phone: _model
                                                        .foundLead?.leadPhone,
                                                    venue: valueOrDefault(
                                                        currentUserDocument
                                                            ?.venue,
                                                        ''),
                                                    address: valueOrDefault(
                                                        currentUserDocument
                                                            ?.address,
                                                        ''),
                                                    city: valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    state: valueOrDefault(
                                                        currentUserDocument
                                                            ?.state,
                                                        ''),
                                                    country: valueOrDefault(
                                                        currentUserDocument
                                                            ?.country,
                                                        ''),
                                                    zipCode: valueOrDefault(
                                                        currentUserDocument
                                                            ?.zipCode,
                                                        ''),
                                                    createdat:
                                                        getCurrentTimestamp,
                                                    memberStatus:
                                                        MemberStatus.Prospect,
                                                    referralID:
                                                        _model.scannedReturn,
                                                    profilePic:
                                                        currentUserPhoto,
                                                    gender: valueOrDefault(
                                                        currentUserDocument
                                                            ?.gender,
                                                        ''),
                                                    dateofBirth:
                                                        currentUserDocument
                                                            ?.dateofBirth,
                                                    profession: valueOrDefault(
                                                        currentUserDocument
                                                            ?.profession,
                                                        ''),
                                                    age: valueOrDefault(
                                                        currentUserDocument
                                                            ?.age,
                                                        0),
                                                    intro: valueOrDefault(
                                                        currentUserDocument
                                                            ?.intro,
                                                        ''),
                                                    cpRef: _model
                                                        .foundCP?.reference,
                                                  ));
                                                  _model.createdProspect =
                                                      MembersClubRecord
                                                          .getDocumentFromData(
                                                              createMembersClubRecordData(
                                                                refUser:
                                                                    currentUserReference,
                                                                name:
                                                                    currentUserDisplayName,
                                                                email: _model
                                                                    .foundLead
                                                                    ?.leadEmail,
                                                                phone: _model
                                                                    .foundLead
                                                                    ?.leadPhone,
                                                                venue: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.venue,
                                                                    ''),
                                                                address: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.address,
                                                                    ''),
                                                                city: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.city,
                                                                    ''),
                                                                state: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.state,
                                                                    ''),
                                                                country: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.country,
                                                                    ''),
                                                                zipCode: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.zipCode,
                                                                    ''),
                                                                createdat:
                                                                    getCurrentTimestamp,
                                                                memberStatus:
                                                                    MemberStatus
                                                                        .Prospect,
                                                                referralID: _model
                                                                    .scannedReturn,
                                                                profilePic:
                                                                    currentUserPhoto,
                                                                gender: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.gender,
                                                                    ''),
                                                                dateofBirth:
                                                                    currentUserDocument
                                                                        ?.dateofBirth,
                                                                profession: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.profession,
                                                                    ''),
                                                                age: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.age,
                                                                    0),
                                                                intro: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.intro,
                                                                    ''),
                                                                cpRef: _model
                                                                    .foundCP
                                                                    ?.reference,
                                                              ),
                                                              membersClubRecordReference);
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title:
                                                            Text('Success!!!'),
                                                        content: Text(
                                                            'Your request to join club is successfully submitted to club admin for approval. '),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );

                                                  context.pushNamed(
                                                      GeneralDashboardWidget
                                                          .routeName);

                                                  safeSetState(() {});
                                                },
                                                text: 'Scan QR Code',
                                                options: FFButtonOptions(
                                                  width: 220.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF3C9AF0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 3.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 22.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            _model.showPhoneNumber = true;
                                            _model.hidescanner = true;
                                            safeSetState(() {});
                                          },
                                          text: 'Use OTP Instead',
                                          options: FFButtonOptions(
                                            width: 220.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.showPhoneNumber == true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Container(
                                              width: 200.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                autofocus: false,
                                                enabled: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText:
                                                      '10 Digit Phone Number',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts.lato(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts.lato(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 0.5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: Color(0x00FFFFFF),
                                                  hoverColor:
                                                      Colors.transparent,
                                                  prefixIcon: Icon(
                                                    Icons.phone_iphone,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.lato(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                maxLength: 10,
                                                maxLengthEnforcement:
                                                    MaxLengthEnforcement
                                                        .enforced,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                enableInteractiveSelection:
                                                    true,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            icon: Icon(
                                              FFIcons.klogout1Copy,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              _model.foundCPphone =
                                                  await queryChannelPartnersRecordOnce(
                                                parent:
                                                    widget.refClub?.reference,
                                                queryBuilder:
                                                    (channelPartnersRecord) =>
                                                        channelPartnersRecord
                                                            .where(
                                                  'phoneNumber',
                                                  isEqualTo: _model
                                                      .textController.text,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              _model.randomOTP = random_data
                                                  .randomInteger(123456, 987987)
                                                  .toString();
                                              safeSetState(() {});
                                              triggerPushNotification(
                                                notificationTitle:
                                                    'Verification Requested.',
                                                notificationText:
                                                    '${currentUserDisplayName} has requested verification for joining ${widget.refClub?.name} and added you as Referral. Referral Verification code is - ${_model.randomOTP}',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  _model.foundCP!.refUser!
                                                ],
                                                initialPageName:
                                                    'notifications',
                                                parameterData: {},
                                              );

                                              await NotificationsRecord
                                                      .createDoc(_model
                                                          .foundCPphone!
                                                          .refUser!)
                                                  .set(
                                                      createNotificationsRecordData(
                                                refReciever: _model
                                                    .foundCPphone?.refUser,
                                                refSender: currentUserReference,
                                                senderName:
                                                    currentUserDisplayName,
                                                createdAt: getCurrentTimestamp,
                                                message:
                                                    '${currentUserDisplayName} has requested verification for joining ${widget.refClub?.name} and added you as Referral. Referral Verification code is - ${_model.randomOTP}',
                                                priority: 'Important',
                                              ));
                                              _model.showOTP = true;
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (_model.showOTP == true)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 22.0, 0.0, 10.0),
                                        child: PinCodeTextField(
                                          autoDisposeControllers: false,
                                          appContext: context,
                                          length: 6,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          enableActiveFill: false,
                                          autoFocus: true,
                                          focusNode: _model.pinCodeFocusNode,
                                          enablePinAutofill: false,
                                          errorTextSpace: 16.0,
                                          showCursor: true,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          obscureText: false,
                                          hintCharacter: '●',
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          pinTheme: PinTheme(
                                            fieldHeight: 44.0,
                                            fieldWidth: 44.0,
                                            borderWidth: 1.0,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            shape: PinCodeFieldShape.box,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            inactiveColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            selectedColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                          controller: _model.pinCodeController,
                                          onChanged: (_) {},
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          validator: _model
                                              .pinCodeControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 15.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 12.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (_model.randomOTP ==
                                                      _model.pinCodeController!
                                                          .text) {
                                                    _model.foundLead2 =
                                                        await queryLeadsRecordOnce(
                                                      parent: widget
                                                          .refClub?.reference,
                                                      queryBuilder:
                                                          (leadsRecord) =>
                                                              leadsRecord.where(
                                                                  Filter.or(
                                                        Filter(
                                                          'LeadPhone',
                                                          isEqualTo:
                                                              currentPhoneNumber,
                                                        ),
                                                        Filter(
                                                          'leadEmail',
                                                          isEqualTo:
                                                              currentUserEmail,
                                                        ),
                                                      )),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    _shouldSetState = true;

                                                    var membersClubRecordReference =
                                                        MembersClubRecord
                                                            .createDoc(widget
                                                                .refClub!
                                                                .reference);
                                                    await membersClubRecordReference
                                                        .set(
                                                            createMembersClubRecordData(
                                                      refUser:
                                                          currentUserReference,
                                                      name: _model
                                                          .foundLead?.leadName,
                                                      email: _model
                                                          .foundLead?.leadEmail,
                                                      phone: _model
                                                          .foundLead?.leadPhone,
                                                      venue: valueOrDefault(
                                                          currentUserDocument
                                                              ?.venue,
                                                          ''),
                                                      address: valueOrDefault(
                                                          currentUserDocument
                                                              ?.address,
                                                          ''),
                                                      city: valueOrDefault(
                                                          currentUserDocument
                                                              ?.city,
                                                          ''),
                                                      state: valueOrDefault(
                                                          currentUserDocument
                                                              ?.state,
                                                          ''),
                                                      country: valueOrDefault(
                                                          currentUserDocument
                                                              ?.country,
                                                          ''),
                                                      zipCode: valueOrDefault(
                                                          currentUserDocument
                                                              ?.zipCode,
                                                          ''),
                                                      createdat:
                                                          getCurrentTimestamp,
                                                      memberStatus:
                                                          MemberStatus.Prospect,
                                                      referralID: _model
                                                          .foundCPphone
                                                          ?.uniqueCPCode,
                                                      profilePic:
                                                          currentUserPhoto,
                                                      gender: valueOrDefault(
                                                          currentUserDocument
                                                              ?.gender,
                                                          ''),
                                                      dateofBirth:
                                                          currentUserDocument
                                                              ?.dateofBirth,
                                                      profession: valueOrDefault(
                                                          currentUserDocument
                                                              ?.profession,
                                                          ''),
                                                      age: valueOrDefault(
                                                          currentUserDocument
                                                              ?.age,
                                                          0),
                                                      intro: valueOrDefault(
                                                          currentUserDocument
                                                              ?.intro,
                                                          ''),
                                                      cpRef: _model.foundCPphone
                                                          ?.reference,
                                                    ));
                                                    _model.createdProspect2 =
                                                        MembersClubRecord
                                                            .getDocumentFromData(
                                                                createMembersClubRecordData(
                                                                  refUser:
                                                                      currentUserReference,
                                                                  name: _model
                                                                      .foundLead
                                                                      ?.leadName,
                                                                  email: _model
                                                                      .foundLead
                                                                      ?.leadEmail,
                                                                  phone: _model
                                                                      .foundLead
                                                                      ?.leadPhone,
                                                                  venue: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.venue,
                                                                      ''),
                                                                  address: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.address,
                                                                      ''),
                                                                  city: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.city,
                                                                      ''),
                                                                  state: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.state,
                                                                      ''),
                                                                  country: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.country,
                                                                      ''),
                                                                  zipCode: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.zipCode,
                                                                      ''),
                                                                  createdat:
                                                                      getCurrentTimestamp,
                                                                  memberStatus:
                                                                      MemberStatus
                                                                          .Prospect,
                                                                  referralID: _model
                                                                      .foundCPphone
                                                                      ?.uniqueCPCode,
                                                                  profilePic:
                                                                      currentUserPhoto,
                                                                  gender: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.gender,
                                                                      ''),
                                                                  dateofBirth:
                                                                      currentUserDocument
                                                                          ?.dateofBirth,
                                                                  profession: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.profession,
                                                                      ''),
                                                                  age: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.age,
                                                                      0),
                                                                  intro: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.intro,
                                                                      ''),
                                                                  cpRef: _model
                                                                      .foundCPphone
                                                                      ?.reference,
                                                                ),
                                                                membersClubRecordReference);
                                                    _shouldSetState = true;
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Success!!!'),
                                                          content: Text(
                                                              'Your request to join club is successfully submitted to club admin for approval. '),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );

                                                    context.pushNamed(
                                                        GeneralDashboardWidget
                                                            .routeName);

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              Text('Error!!!'),
                                                          content: Text(
                                                              'Wrong PIN. Please check again. '),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    safeSetState(() {
                                                      _model.pinCodeController
                                                          ?.clear();
                                                    });
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                text: 'Verify OTP',
                                                options: FFButtonOptions(
                                                  width: 270.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF3C9AF0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 3.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
