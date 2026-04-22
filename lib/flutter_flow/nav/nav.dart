import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? GeneralDashboardWidget()
          : OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? GeneralDashboardWidget()
              : OnboardingWidget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: CreateprofileWidget.routeName,
          path: CreateprofileWidget.routePath,
          builder: (context, params) => CreateprofileWidget(),
        ),
        FFRoute(
          name: EditprofileWidget.routeName,
          path: EditprofileWidget.routePath,
          asyncParams: {
            'refUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => EditprofileWidget(
            refUser: params.getParam(
              'refUser',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateStudioWidget.routeName,
          path: CreateStudioWidget.routePath,
          builder: (context, params) => CreateStudioWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: BasepageWidget.routeName,
          path: BasepageWidget.routePath,
          builder: (context, params) => BasepageWidget(),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: ViewProfile1Widget.routeName,
          path: ViewProfile1Widget.routePath,
          builder: (context, params) => ViewProfile1Widget(
            refUser: params.getParam(
              'refUser',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: ViewStaffAccountWidget.routeName,
          path: ViewStaffAccountWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refStaff': getDoc(
                ['studio', 'studioStaff'], StudioStaffRecord.fromSnapshot),
          },
          builder: (context, params) => ViewStaffAccountWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refStaff: params.getParam(
              'refStaff',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ApproveCPNewWidget.routeName,
          path: ApproveCPNewWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ApproveCPNewWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewstudioWidget.routeName,
          path: ViewstudioWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refuser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ViewstudioWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refuser: params.getParam(
              'refuser',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddLeadnewWidget.routeName,
          path: AddLeadnewWidget.routePath,
          asyncParams: {
            'refCP': getDoc(['Club', 'channelPartners'],
                ChannelPartnersRecord.fromSnapshot),
          },
          builder: (context, params) => AddLeadnewWidget(
            refCP: params.getParam(
              'refCP',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateCPNewWidget.routeName,
          path: CreateCPNewWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateCPNewWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewChannelPartnerNewWidget.routeName,
          path: ViewChannelPartnerNewWidget.routePath,
          asyncParams: {
            'refchannelPartner': getDoc(['Club', 'channelPartners'],
                ChannelPartnersRecord.fromSnapshot),
          },
          builder: (context, params) => ViewChannelPartnerNewWidget(
            refchannelPartner: params.getParam(
              'refchannelPartner',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewLeadNewWidget.routeName,
          path: ViewLeadNewWidget.routePath,
          asyncParams: {
            'refLead': getDoc(['Club', 'leads'], LeadsRecord.fromSnapshot),
          },
          builder: (context, params) => ViewLeadNewWidget(
            refLead: params.getParam(
              'refLead',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewLeadListWidget.routeName,
          path: ViewLeadListWidget.routePath,
          asyncParams: {
            'refCP': getDoc(['Club', 'channelPartners'],
                ChannelPartnersRecord.fromSnapshot),
          },
          builder: (context, params) => ViewLeadListWidget(
            refCP: params.getParam(
              'refCP',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewStudioListWidget.routeName,
          path: ViewStudioListWidget.routePath,
          asyncParams: {
            'refUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ViewStudioListWidget(
            refUser: params.getParam(
              'refUser',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MemberScanSystemWidget.routeName,
          path: MemberScanSystemWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => MemberScanSystemWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: DashboardmembersWidget.routeName,
          path: DashboardmembersWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refMember':
                getDoc(['studio', 'members'], MembersRecord.fromSnapshot),
          },
          builder: (context, params) => DashboardmembersWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refMember: params.getParam(
              'refMember',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: StaffDashboardWidget.routeName,
          path: StaffDashboardWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refStaff': getDoc(
                ['studio', 'studioStaff'], StudioStaffRecord.fromSnapshot),
          },
          builder: (context, params) => StaffDashboardWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refStaff: params.getParam(
              'refStaff',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SettingsWidget.routeName,
          path: SettingsWidget.routePath,
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: ForgotPassword01Widget.routeName,
          path: ForgotPassword01Widget.routePath,
          builder: (context, params) => ForgotPassword01Widget(),
        ),
        FFRoute(
          name: SupportHomeWidget.routeName,
          path: SupportHomeWidget.routePath,
          builder: (context, params) => SupportHomeWidget(),
        ),
        FFRoute(
          name: SubmitBugWidget.routeName,
          path: SubmitBugWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => SubmitBugWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SubmitRequestWidget.routeName,
          path: SubmitRequestWidget.routePath,
          builder: (context, params) => SubmitRequestWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: TermsofUseWidget.routeName,
          path: TermsofUseWidget.routePath,
          builder: (context, params) => TermsofUseWidget(),
        ),
        FFRoute(
          name: EulaAgreementWidget.routeName,
          path: EulaAgreementWidget.routePath,
          builder: (context, params) => EulaAgreementWidget(),
        ),
        FFRoute(
          name: CookiePolicyWidget.routeName,
          path: CookiePolicyWidget.routePath,
          builder: (context, params) => CookiePolicyWidget(),
        ),
        FFRoute(
          name: AcceptableUseWidget.routeName,
          path: AcceptableUseWidget.routePath,
          builder: (context, params) => AcceptableUseWidget(),
        ),
        FFRoute(
          name: IpandDMAPolicyWidget.routeName,
          path: IpandDMAPolicyWidget.routePath,
          builder: (context, params) => IpandDMAPolicyWidget(),
        ),
        FFRoute(
          name: MembershipTermsWidget.routeName,
          path: MembershipTermsWidget.routePath,
          builder: (context, params) => MembershipTermsWidget(),
        ),
        FFRoute(
          name: AdminDashboardWidget.routeName,
          path: AdminDashboardWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => AdminDashboardWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: GeneralDashboardWidget.routeName,
          path: GeneralDashboardWidget.routePath,
          builder: (context, params) => GeneralDashboardWidget(),
        ),
        FFRoute(
          name: DivertorWidget.routeName,
          path: DivertorWidget.routePath,
          builder: (context, params) => DivertorWidget(),
        ),
        FFRoute(
          name: CreateCardWidget.routeName,
          path: CreateCardWidget.routePath,
          asyncParams: {
            'refMember':
                getDoc(['Club', 'MembersClub'], MembersClubRecord.fromSnapshot),
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
            'refCP': getDoc(['Club', 'channelPartners'],
                ChannelPartnersRecord.fromSnapshot),
          },
          builder: (context, params) => CreateCardWidget(
            refMember: params.getParam(
              'refMember',
              ParamType.Document,
            ),
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            refCP: params.getParam(
              'refCP',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ApproveMemberWidget.routeName,
          path: ApproveMemberWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ApproveMemberWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewMemberRequestWidget.routeName,
          path: ViewMemberRequestWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refApplication': getDoc(['studio', 'memberApplication'],
                MemberApplicationRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewMemberRequestWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refApplication: params.getParam(
              'refApplication',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateContestWidget.routeName,
          path: CreateContestWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateContestWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditCPProfileWidget.routeName,
          path: EditCPProfileWidget.routePath,
          asyncParams: {
            'refCP': getDoc(['Club', 'channelPartners'],
                ChannelPartnersRecord.fromSnapshot),
          },
          builder: (context, params) => EditCPProfileWidget(
            refCP: params.getParam(
              'refCP',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewAllLeadsWidget.routeName,
          path: ViewAllLeadsWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewAllLeadsWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewAllCPWidget.routeName,
          path: ViewAllCPWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewAllCPWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewallmembersWidget.routeName,
          path: ViewallmembersWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ViewallmembersWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: PermissionsWidget.routeName,
          path: PermissionsWidget.routePath,
          builder: (context, params) => PermissionsWidget(),
        ),
        FFRoute(
          name: TermsPageWidget.routeName,
          path: TermsPageWidget.routePath,
          builder: (context, params) => TermsPageWidget(),
        ),
        FFRoute(
          name: UpgradeWidget.routeName,
          path: UpgradeWidget.routePath,
          builder: (context, params) => UpgradeWidget(),
        ),
        FFRoute(
          name: ViewChallengesWidget.routeName,
          path: ViewChallengesWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewChallengesWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            userType: params.getParam(
              'userType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ViewContestOneWidget.routeName,
          path: ViewContestOneWidget.routePath,
          asyncParams: {
            'refContest':
                getDoc(['Club', 'contests'], ContestsRecord.fromSnapshot),
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewContestOneWidget(
            refContest: params.getParam(
              'refContest',
              ParamType.Document,
            ),
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            userType: params.getParam(
              'userType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AddPaymentsCPWidget.routeName,
          path: AddPaymentsCPWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => AddPaymentsCPWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: PointRedemptionWidget.routeName,
          path: PointRedemptionWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => PointRedemptionWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreategeneralContestWidget.routeName,
          path: CreategeneralContestWidget.routePath,
          builder: (context, params) => CreategeneralContestWidget(),
        ),
        FFRoute(
          name: ViewOpenChallengesWidget.routeName,
          path: ViewOpenChallengesWidget.routePath,
          builder: (context, params) => ViewOpenChallengesWidget(
            userType: params.getParam(
              'userType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ViewOpenContestOneWidget.routeName,
          path: ViewOpenContestOneWidget.routePath,
          asyncParams: {
            'refContest': getDoc(['users', 'generalContests'],
                GeneralContestsRecord.fromSnapshot),
          },
          builder: (context, params) => ViewOpenContestOneWidget(
            refContest: params.getParam(
              'refContest',
              ParamType.Document,
            ),
            userType: params.getParam(
              'userType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TestPageWidget.routeName,
          path: TestPageWidget.routePath,
          builder: (context, params) => TestPageWidget(),
        ),
        FFRoute(
          name: EditStudioWidget.routeName,
          path: EditStudioWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refUser': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => EditStudioWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refUser: params.getParam(
              'refUser',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateGatePassWidget.routeName,
          path: CreateGatePassWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
            'refmember':
                getDoc(['Club', 'MembersClub'], MembersClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateGatePassWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            refmember: params.getParam(
              'refmember',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MyKeysWidget.routeName,
          path: MyKeysWidget.routePath,
          builder: (context, params) => MyKeysWidget(),
        ),
        FFRoute(
          name: ViewPassWidget.routeName,
          path: ViewPassWidget.routePath,
          asyncParams: {
            'refPass': getDoc(
                ['Club', 'memberPasses'], MemberPassesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewPassWidget(
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: TransferPassWidget.routeName,
          path: TransferPassWidget.routePath,
          asyncParams: {
            'refPass': getDoc(
                ['Club', 'memberPasses'], MemberPassesRecord.fromSnapshot),
          },
          builder: (context, params) => TransferPassWidget(
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: PassScannerWidget.routeName,
          path: PassScannerWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => PassScannerWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateMembersPassWidget.routeName,
          path: CreateMembersPassWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateMembersPassWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: VerifyPhoneNumberWidget.routeName,
          path: VerifyPhoneNumberWidget.routePath,
          builder: (context, params) => VerifyPhoneNumberWidget(),
        ),
        FFRoute(
          name: EmergencyDetailsWidget.routeName,
          path: EmergencyDetailsWidget.routePath,
          builder: (context, params) => EmergencyDetailsWidget(),
        ),
        FFRoute(
          name: CreateGroupWidget.routeName,
          path: CreateGroupWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateGroupWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewGroupsWidget.routeName,
          path: ViewGroupsWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewGroupsWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateEventWidget.routeName,
          path: CreateEventWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateEventWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewClubEventWidget.routeName,
          path: ViewClubEventWidget.routePath,
          asyncParams: {
            'refEvent':
                getDoc(['Club', 'clubEvents'], ClubEventsRecord.fromSnapshot),
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewClubEventWidget(
            refEvent: params.getParam(
              'refEvent',
              ParamType.Document,
            ),
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewGroupEventsWidget.routeName,
          path: ViewGroupEventsWidget.routePath,
          asyncParams: {
            'refEvent':
                getDoc(['Club', 'groupEvents'], GroupEventsRecord.fromSnapshot),
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewGroupEventsWidget(
            refEvent: params.getParam(
              'refEvent',
              ParamType.Document,
            ),
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewTicketGeneralWidget.routeName,
          path: ViewTicketGeneralWidget.routePath,
          asyncParams: {
            'refTicket':
                getDoc(['Club', 'tickets'], TicketsRecord.fromSnapshot),
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewTicketGeneralWidget(
            refTicket: params.getParam(
              'refTicket',
              ParamType.Document,
            ),
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EventListsWidget.routeName,
          path: EventListsWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => EventListsWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateTicketWidget.routeName,
          path: CreateTicketWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
            'refEvent':
                getDoc(['Club', 'clubEvents'], ClubEventsRecord.fromSnapshot),
          },
          builder: (context, params) => CreateTicketWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            refEvent: params.getParam(
              'refEvent',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ApproveEventsWidget.routeName,
          path: ApproveEventsWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ApproveEventsWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateStaffAccountWidget.routeName,
          path: CreateStaffAccountWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => CreateStaffAccountWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ApproveStaffAccountsWidget.routeName,
          path: ApproveStaffAccountsWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ApproveStaffAccountsWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ContentPageWidget.routeName,
          path: ContentPageWidget.routePath,
          builder: (context, params) => ContentPageWidget(),
        ),
        FFRoute(
          name: ViewAttendanceRollWidget.routeName,
          path: ViewAttendanceRollWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => ViewAttendanceRollWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MyStaffWidget.routeName,
          path: MyStaffWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => MyStaffWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddLeadGeneralWidget.routeName,
          path: AddLeadGeneralWidget.routePath,
          asyncParams: {
            'refStaff': getDoc(
                ['Club', 'staffAccounts'], StaffAccountsRecord.fromSnapshot),
          },
          builder: (context, params) => AddLeadGeneralWidget(
            refStaff: params.getParam(
              'refStaff',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewGroupWidget.routeName,
          path: ViewGroupWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
            'refGroup': getDoc(['Club', 'Groups'], GroupsRecord.fromSnapshot),
          },
          builder: (context, params) => ViewGroupWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            refGroup: params.getParam(
              'refGroup',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewGroupEventListWidget.routeName,
          path: ViewGroupEventListWidget.routePath,
          asyncParams: {
            'refClub': getDoc(['Club'], ClubRecord.fromSnapshot),
            'refGroup': getDoc(['Club', 'Groups'], GroupsRecord.fromSnapshot),
          },
          builder: (context, params) => ViewGroupEventListWidget(
            refClub: params.getParam(
              'refClub',
              ParamType.Document,
            ),
            refGroup: params.getParam(
              'refGroup',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: StudioRulesWidget.routeName,
          path: StudioRulesWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => StudioRulesWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddRulesWidget.routeName,
          path: AddRulesWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => AddRulesWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditRuleWidget.routeName,
          path: EditRuleWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refRule': getDoc(
                ['studio', 'rulesStudio'], RulesStudioRecord.fromSnapshot),
          },
          builder: (context, params) => EditRuleWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refRule: params.getParam(
              'refRule',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: VerifySMSDWidget.routeName,
          path: VerifySMSDWidget.routePath,
          builder: (context, params) => VerifySMSDWidget(),
        ),
        FFRoute(
          name: AddLeadAdminWidget.routeName,
          path: AddLeadAdminWidget.routePath,
          asyncParams: {
            'refclub': getDoc(['Club'], ClubRecord.fromSnapshot),
          },
          builder: (context, params) => AddLeadAdminWidget(
            refclub: params.getParam(
              'refclub',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MyAccountWidget.routeName,
          path: MyAccountWidget.routePath,
          builder: (context, params) => MyAccountWidget(),
        ),
        FFRoute(
          name: Onboarding1Widget.routeName,
          path: Onboarding1Widget.routePath,
          builder: (context, params) => Onboarding1Widget(),
        ),
        FFRoute(
          name: Onboarding2Widget.routeName,
          path: Onboarding2Widget.routePath,
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: Onboarding3Widget.routeName,
          path: Onboarding3Widget.routePath,
          builder: (context, params) => Onboarding3Widget(),
        ),
        FFRoute(
          name: Onboarding4Widget.routeName,
          path: Onboarding4Widget.routePath,
          builder: (context, params) => Onboarding4Widget(),
        ),
        FFRoute(
          name: Onboarding5Widget.routeName,
          path: Onboarding5Widget.routePath,
          builder: (context, params) => Onboarding5Widget(),
        ),
        FFRoute(
          name: CreateBranchWidget.routeName,
          path: CreateBranchWidget.routePath,
          builder: (context, params) => CreateBranchWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['studio'],
            ),
          ),
        ),
        FFRoute(
          name: EditBranchWidget.routeName,
          path: EditBranchWidget.routePath,
          asyncParams: {
            'refBranch':
                getDoc(['studio', 'branch'], BranchRecord.fromSnapshot),
          },
          builder: (context, params) => EditBranchWidget(
            refBranch: params.getParam(
              'refBranch',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewBranchWidget.routeName,
          path: ViewBranchWidget.routePath,
          asyncParams: {
            'refBranch':
                getDoc(['studio', 'branch'], BranchRecord.fromSnapshot),
          },
          builder: (context, params) => ViewBranchWidget(
            refBranch: params.getParam(
              'refBranch',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreateCourseWidget.routeName,
          path: CreateCourseWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => CreateCourseWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: Paywall1Widget.routeName,
          path: Paywall1Widget.routePath,
          builder: (context, params) => Paywall1Widget(),
        ),
        FFRoute(
          name: EditCourseWidget.routeName,
          path: EditCourseWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
          },
          builder: (context, params) => EditCourseWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewCourseWidget.routeName,
          path: ViewCourseWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewCourseWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewCourseListWidget.routeName,
          path: ViewCourseListWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ViewCourseListWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: StaffApplicationWidget.routeName,
          path: StaffApplicationWidget.routePath,
          builder: (context, params) => StaffApplicationWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['studio'],
            ),
          ),
        ),
        FFRoute(
          name: MemberApplicationWidget.routeName,
          path: MemberApplicationWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
            'selectedPlan':
                getDoc(['studio', 'packages'], PackagesRecord.fromSnapshot),
          },
          builder: (context, params) => MemberApplicationWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
            selectedPlan: params.getParam(
              'selectedPlan',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MemberPaywallWidget.routeName,
          path: MemberPaywallWidget.routePath,
          builder: (context, params) => MemberPaywallWidget(),
        ),
        FFRoute(
          name: ViewMemberProfileWidget.routeName,
          path: ViewMemberProfileWidget.routePath,
          asyncParams: {
            'refMember':
                getDoc(['studio', 'members'], MembersRecord.fromSnapshot),
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ViewMemberProfileWidget(
            refMember: params.getParam(
              'refMember',
              ParamType.Document,
            ),
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreatePassWidget.routeName,
          path: CreatePassWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => CreatePassWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreatePackageWidget.routeName,
          path: CreatePackageWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
          },
          builder: (context, params) => CreatePackageWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewPlansWidget.routeName,
          path: ViewPlansWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
            'refPackage':
                getDoc(['studio', 'packages'], PackagesRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewPlansWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
            refPackage: params.getParam(
              'refPackage',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: CreatePackagePassWidget.routeName,
          path: CreatePackagePassWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
          },
          builder: (context, params) => CreatePackagePassWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewPassStudioWidget.routeName,
          path: ViewPassStudioWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewPassStudioWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: BranchListWidget.routeName,
          path: BranchListWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => BranchListWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditPassWidget.routeName,
          path: EditPassWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
          },
          builder: (context, params) => EditPassWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditPassPackageWidget.routeName,
          path: EditPassPackageWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
            'refPackage':
                getDoc(['studio', 'packages'], PackagesRecord.fromSnapshot),
          },
          builder: (context, params) => EditPassPackageWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
            refPackage: params.getParam(
              'refPackage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewPassListWidget.routeName,
          path: ViewPassListWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
          },
          builder: (context, params) => ViewPassListWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: EditCoursePackageWidget.routeName,
          path: EditCoursePackageWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
            'refPackage':
                getDoc(['studio', 'packages'], PackagesRecord.fromSnapshot),
          },
          builder: (context, params) => EditCoursePackageWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
            refPackage: params.getParam(
              'refPackage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MemberApplicationCourseWidget.routeName,
          path: MemberApplicationCourseWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refCourse':
                getDoc(['studio', 'courses'], CoursesRecord.fromSnapshot),
            'selectedPlan':
                getDoc(['studio', 'packages'], PackagesRecord.fromSnapshot),
          },
          builder: (context, params) => MemberApplicationCourseWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refCourse: params.getParam(
              'refCourse',
              ParamType.Document,
            ),
            selectedPlan: params.getParam(
              'selectedPlan',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewMemberRequestPassWidget.routeName,
          path: ViewMemberRequestPassWidget.routePath,
          asyncParams: {
            'refStudio': getDoc(['studio'], StudioRecord.fromSnapshot),
            'refApplication': getDoc(['studio', 'memberApplication'],
                MemberApplicationRecord.fromSnapshot),
            'refPass': getDoc(['studio', 'passes'], PassesRecord.fromSnapshot),
          },
          builder: (context, params) => ViewMemberRequestPassWidget(
            refStudio: params.getParam(
              'refStudio',
              ParamType.Document,
            ),
            refApplication: params.getParam(
              'refApplication',
              ParamType.Document,
            ),
            refPass: params.getParam(
              'refPass',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
