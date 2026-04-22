import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              'assets/images/aldebron_Logo_(51).png',
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'CreateAccount': ParameterData.none(),
  'login': ParameterData.none(),
  'createprofile': ParameterData.none(),
  'editprofile': (data) async => ParameterData(
        allParams: {
          'refUser': await getDocumentParameter<UsersRecord>(
              data, 'refUser', UsersRecord.fromSnapshot),
        },
      ),
  'createStudio': ParameterData.none(),
  'Onboarding': ParameterData.none(),
  'basepage': ParameterData.none(),
  'notifications': ParameterData.none(),
  'viewProfile1': (data) async => ParameterData(
        allParams: {
          'refUser': getParameter<DocumentReference>(data, 'refUser'),
        },
      ),
  'viewStaffAccount': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refStaff': await getDocumentParameter<StudioStaffRecord>(
              data, 'refStaff', StudioStaffRecord.fromSnapshot),
        },
      ),
  'approveCPNew': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewstudio': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refuser': await getDocumentParameter<UsersRecord>(
              data, 'refuser', UsersRecord.fromSnapshot),
        },
      ),
  'addLeadnew': (data) async => ParameterData(
        allParams: {
          'refCP': await getDocumentParameter<ChannelPartnersRecord>(
              data, 'refCP', ChannelPartnersRecord.fromSnapshot),
        },
      ),
  'createCPNew': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewChannelPartnerNew': (data) async => ParameterData(
        allParams: {
          'refchannelPartner':
              await getDocumentParameter<ChannelPartnersRecord>(data,
                  'refchannelPartner', ChannelPartnersRecord.fromSnapshot),
        },
      ),
  'viewLeadNew': (data) async => ParameterData(
        allParams: {
          'refLead': await getDocumentParameter<LeadsRecord>(
              data, 'refLead', LeadsRecord.fromSnapshot),
        },
      ),
  'viewLeadList': (data) async => ParameterData(
        allParams: {
          'refCP': await getDocumentParameter<ChannelPartnersRecord>(
              data, 'refCP', ChannelPartnersRecord.fromSnapshot),
        },
      ),
  'viewStudioList': (data) async => ParameterData(
        allParams: {
          'refUser': await getDocumentParameter<UsersRecord>(
              data, 'refUser', UsersRecord.fromSnapshot),
        },
      ),
  'memberScanSystem': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'dashboardmembers': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refMember': await getDocumentParameter<MembersRecord>(
              data, 'refMember', MembersRecord.fromSnapshot),
        },
      ),
  'staffDashboard': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refStaff': await getDocumentParameter<StudioStaffRecord>(
              data, 'refStaff', StudioStaffRecord.fromSnapshot),
        },
      ),
  'settings': ParameterData.none(),
  'ForgotPassword01': ParameterData.none(),
  'supportHome': ParameterData.none(),
  'submitBug': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'submitRequest': ParameterData.none(),
  'privacyPolicy': ParameterData.none(),
  'termsofUse': ParameterData.none(),
  'eulaAgreement': ParameterData.none(),
  'cookiePolicy': ParameterData.none(),
  'acceptableUse': ParameterData.none(),
  'ipandDMAPolicy': ParameterData.none(),
  'membershipTerms': ParameterData.none(),
  'adminDashboard': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'generalDashboard': ParameterData.none(),
  'divertor': ParameterData.none(),
  'createCard': (data) async => ParameterData(
        allParams: {
          'refMember': await getDocumentParameter<MembersClubRecord>(
              data, 'refMember', MembersClubRecord.fromSnapshot),
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'refCP': await getDocumentParameter<ChannelPartnersRecord>(
              data, 'refCP', ChannelPartnersRecord.fromSnapshot),
        },
      ),
  'approveMember': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'viewMemberRequest': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refApplication': await getDocumentParameter<MemberApplicationRecord>(
              data, 'refApplication', MemberApplicationRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
        },
      ),
  'createContest': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'editCPProfile': (data) async => ParameterData(
        allParams: {
          'refCP': await getDocumentParameter<ChannelPartnersRecord>(
              data, 'refCP', ChannelPartnersRecord.fromSnapshot),
        },
      ),
  'viewAllLeads': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewAllCP': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewallmembers': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'permissions': ParameterData.none(),
  'termsPage': ParameterData.none(),
  'upgrade': ParameterData.none(),
  'viewChallenges': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'userType': getParameter<String>(data, 'userType'),
        },
      ),
  'viewContestOne': (data) async => ParameterData(
        allParams: {
          'refContest': await getDocumentParameter<ContestsRecord>(
              data, 'refContest', ContestsRecord.fromSnapshot),
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'userType': getParameter<String>(data, 'userType'),
        },
      ),
  'addPaymentsCP': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'pointRedemption': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'creategeneralContest': ParameterData.none(),
  'viewOpenChallenges': (data) async => ParameterData(
        allParams: {
          'userType': getParameter<String>(data, 'userType'),
        },
      ),
  'viewOpenContestOne': (data) async => ParameterData(
        allParams: {
          'refContest': await getDocumentParameter<GeneralContestsRecord>(
              data, 'refContest', GeneralContestsRecord.fromSnapshot),
          'userType': getParameter<String>(data, 'userType'),
        },
      ),
  'TestPage': ParameterData.none(),
  'editStudio': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refUser': await getDocumentParameter<UsersRecord>(
              data, 'refUser', UsersRecord.fromSnapshot),
        },
      ),
  'createGatePass': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'refmember': await getDocumentParameter<MembersClubRecord>(
              data, 'refmember', MembersClubRecord.fromSnapshot),
        },
      ),
  'myKeys': ParameterData.none(),
  'viewPass': (data) async => ParameterData(
        allParams: {
          'refPass': await getDocumentParameter<MemberPassesRecord>(
              data, 'refPass', MemberPassesRecord.fromSnapshot),
        },
      ),
  'transferPass': (data) async => ParameterData(
        allParams: {
          'refPass': await getDocumentParameter<MemberPassesRecord>(
              data, 'refPass', MemberPassesRecord.fromSnapshot),
        },
      ),
  'passScanner': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'createMembersPass': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'verifyPhoneNumber': ParameterData.none(),
  'emergencyDetails': ParameterData.none(),
  'createGroup': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewGroups': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'createEvent': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewClubEvent': (data) async => ParameterData(
        allParams: {
          'refEvent': await getDocumentParameter<ClubEventsRecord>(
              data, 'refEvent', ClubEventsRecord.fromSnapshot),
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewGroupEvents': (data) async => ParameterData(
        allParams: {
          'refEvent': await getDocumentParameter<GroupEventsRecord>(
              data, 'refEvent', GroupEventsRecord.fromSnapshot),
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'viewTicketGeneral': (data) async => ParameterData(
        allParams: {
          'refTicket': await getDocumentParameter<TicketsRecord>(
              data, 'refTicket', TicketsRecord.fromSnapshot),
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'eventLists': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'createTicket': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'refEvent': await getDocumentParameter<ClubEventsRecord>(
              data, 'refEvent', ClubEventsRecord.fromSnapshot),
        },
      ),
  'approveEvents': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'createStaffAccount': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'approveStaffAccounts': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'contentPage': ParameterData.none(),
  'viewAttendanceRoll': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
        },
      ),
  'myStaff': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'addLeadGeneral': (data) async => ParameterData(
        allParams: {
          'refStaff': await getDocumentParameter<StaffAccountsRecord>(
              data, 'refStaff', StaffAccountsRecord.fromSnapshot),
        },
      ),
  'viewGroup': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'refGroup': await getDocumentParameter<GroupsRecord>(
              data, 'refGroup', GroupsRecord.fromSnapshot),
        },
      ),
  'viewGroupEventList': (data) async => ParameterData(
        allParams: {
          'refClub': await getDocumentParameter<ClubRecord>(
              data, 'refClub', ClubRecord.fromSnapshot),
          'refGroup': await getDocumentParameter<GroupsRecord>(
              data, 'refGroup', GroupsRecord.fromSnapshot),
        },
      ),
  'studioRules': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'addRules': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'editRule': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refRule': await getDocumentParameter<RulesStudioRecord>(
              data, 'refRule', RulesStudioRecord.fromSnapshot),
        },
      ),
  'verifySMSD': ParameterData.none(),
  'addLeadAdmin': (data) async => ParameterData(
        allParams: {
          'refclub': await getDocumentParameter<ClubRecord>(
              data, 'refclub', ClubRecord.fromSnapshot),
        },
      ),
  'myAccount': ParameterData.none(),
  'onboarding1': ParameterData.none(),
  'onboarding2': ParameterData.none(),
  'onboarding3': ParameterData.none(),
  'onboarding4': ParameterData.none(),
  'onboarding5': ParameterData.none(),
  'createBranch': (data) async => ParameterData(
        allParams: {
          'refStudio': getParameter<DocumentReference>(data, 'refStudio'),
        },
      ),
  'editBranch': (data) async => ParameterData(
        allParams: {
          'refBranch': await getDocumentParameter<BranchRecord>(
              data, 'refBranch', BranchRecord.fromSnapshot),
        },
      ),
  'viewBranch': (data) async => ParameterData(
        allParams: {
          'refBranch': await getDocumentParameter<BranchRecord>(
              data, 'refBranch', BranchRecord.fromSnapshot),
        },
      ),
  'createCourse': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'paywall1': ParameterData.none(),
  'editCourse': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
        },
      ),
  'viewCourse': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
        },
      ),
  'viewCourseList': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'staffApplication': (data) async => ParameterData(
        allParams: {
          'refStudio': getParameter<DocumentReference>(data, 'refStudio'),
        },
      ),
  'memberApplication': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
          'selectedPlan': await getDocumentParameter<PackagesRecord>(
              data, 'selectedPlan', PackagesRecord.fromSnapshot),
        },
      ),
  'memberPaywall': ParameterData.none(),
  'viewMemberProfile': (data) async => ParameterData(
        allParams: {
          'refMember': await getDocumentParameter<MembersRecord>(
              data, 'refMember', MembersRecord.fromSnapshot),
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'createPass': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'createPackage': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
        },
      ),
  'viewPlans': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
          'refPackage': await getDocumentParameter<PackagesRecord>(
              data, 'refPackage', PackagesRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
        },
      ),
  'createPackagePass': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
        },
      ),
  'viewPassStudio': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
        },
      ),
  'branchList': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'editPass': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
        },
      ),
  'editPassPackage': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
          'refPackage': await getDocumentParameter<PackagesRecord>(
              data, 'refPackage', PackagesRecord.fromSnapshot),
        },
      ),
  'viewPassList': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
        },
      ),
  'editCoursePackage': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
          'refPackage': await getDocumentParameter<PackagesRecord>(
              data, 'refPackage', PackagesRecord.fromSnapshot),
        },
      ),
  'memberApplicationCourse': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refCourse': await getDocumentParameter<CoursesRecord>(
              data, 'refCourse', CoursesRecord.fromSnapshot),
          'selectedPlan': await getDocumentParameter<PackagesRecord>(
              data, 'selectedPlan', PackagesRecord.fromSnapshot),
        },
      ),
  'viewMemberRequestPass': (data) async => ParameterData(
        allParams: {
          'refStudio': await getDocumentParameter<StudioRecord>(
              data, 'refStudio', StudioRecord.fromSnapshot),
          'refApplication': await getDocumentParameter<MemberApplicationRecord>(
              data, 'refApplication', MemberApplicationRecord.fromSnapshot),
          'refPass': await getDocumentParameter<PassesRecord>(
              data, 'refPass', PassesRecord.fromSnapshot),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
