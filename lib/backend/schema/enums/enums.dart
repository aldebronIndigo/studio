import 'package:collection/collection.dart';

enum CpStatus {
  Inactive,
  Active,
  Revoked,
}

enum MemberStatus {
  Lead,
  Prospect,
  Temporary,
  Active,
  Inactive,
  Revoked,
}

enum TicketStatus {
  Open,
  Processing,
  Solved,
  Cancelled,
}

enum PassStatus {
  Inactive,
  Active,
  Used,
  Cancelled,
  Pending,
}

enum PassType {
  Permanent,
  Guest,
  Staff,
  Temporary,
  Member,
}

enum Visibility {
  Public,
  Private,
  Closed,
  InviteOnly,
}

enum GroupStatus {
  Active,
  Inactive,
  Closed,
  Cancelled,
}

enum EventStatus {
  Pending,
  Approved,
  Cancelled,
  Rejected,
  Postponed,
}

enum StaffStatus {
  Inactive,
  Active,
  Paused,
  Dismissed,
  Temporary,
}

enum AttenStatus {
  Started,
  Ended,
  Paused,
}

enum BranchStatus {
  Active,
  Upcoming,
  Closed,
}

enum CourseStatus {
  Draft,
  Available,
  Active,
  Cancelled,
  Paused,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (CpStatus):
      return CpStatus.values.deserialize(value) as T?;
    case (MemberStatus):
      return MemberStatus.values.deserialize(value) as T?;
    case (TicketStatus):
      return TicketStatus.values.deserialize(value) as T?;
    case (PassStatus):
      return PassStatus.values.deserialize(value) as T?;
    case (PassType):
      return PassType.values.deserialize(value) as T?;
    case (Visibility):
      return Visibility.values.deserialize(value) as T?;
    case (GroupStatus):
      return GroupStatus.values.deserialize(value) as T?;
    case (EventStatus):
      return EventStatus.values.deserialize(value) as T?;
    case (StaffStatus):
      return StaffStatus.values.deserialize(value) as T?;
    case (AttenStatus):
      return AttenStatus.values.deserialize(value) as T?;
    case (BranchStatus):
      return BranchStatus.values.deserialize(value) as T?;
    case (CourseStatus):
      return CourseStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
