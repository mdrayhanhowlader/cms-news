/**
 * Created by Haziq 23/04/22
 */

class EndpointConstant {
  static const user = 'staff';
  static const app = 'eboss';

  // ********* WEB APIS *******************

  // APPCODE
  static final String appcode = "api/v2/auth/appcode";

  // LOGIN & LOGOUT
  static final String login = "api/v2/auth/";
  static final String logout = "api/v2/auth/";
  static final String forgotPassword = "Shared/Auth/ForgetPassword?idserver=";

  // LISTING
  static final systemLevel = "Shared/Listing/SystemLevel?idserver=";
  static final branchList = "Shared/Listing/ListBranch?idserver=";
  static final raceList = "Shared/Listing/ListRace?idserver=";
  static final genderList = "Shared/Listing/ListGender?idserver=";
  static final religionList = "Shared/Listing/ListReligion?idserver=";
  static final nationalityList = "Shared/Listing/ListNationality?idserver=";
  static final stateList = "Shared/Listing/ListState?idserver=";
  static final qualificationList = "Shared/Listing/ListQulification?idserver=";
  static final occupationList = "Shared/Listing/ListOccupation?idserver=";
  static final divisionList = "Shared/Listing/ListDivision?idserver=";
  static final statusList = "Shared/Listing/ListJobStatus?idserver=";

  // STAFF PROFILE
  //static final staff = "api/v2/staff";
  static final staff = "api/v2/staff/$app/$user/list";

  // STAFF INFORMATION
  static final staffInfo = "Eboss/Hr/Staff/DetailStaff?idserver=";

  // CUSTOM LIST
  static final customList = "api/v2/list/custom-parameter";
}
