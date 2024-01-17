// To parse this JSON data, do
//
//     final staffInformationModel = staffInformationModelFromJson(jsonString);

import 'dart:convert';

StaffInformationModel staffInformationModelFromJson(String str) =>
    StaffInformationModel.fromJson(json.decode(str));

String staffInformationModelToJson(StaffInformationModel data) =>
    json.encode(data.toJson());

class StaffInformationModel {
  final int? status;
  final String? msg;
  final Data? data;

  StaffInformationModel({
    this.status,
    this.msg,
    this.data,
  });

  factory StaffInformationModel.fromJson(Map<String, dynamic> json) =>
      StaffInformationModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data?.toJson(),
      };
}

class Data {
  final SystemInfo? systemInfo;
  final PersonalInfo? personalInfo;
  final Addr? addr;
  final OccupationInfo? occupationInfo;
  final List<Academic>? academic;
  final List<WorkingExperience>? workingExperience;
  final FamilyInfo? familyInfo;

  Data({
    this.systemInfo,
    this.personalInfo,
    this.addr,
    this.occupationInfo,
    this.academic,
    this.workingExperience,
    this.familyInfo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        systemInfo: json["system_info"] == null
            ? null
            : SystemInfo.fromJson(json["system_info"]),
        personalInfo: json["personal_info"] == null
            ? null
            : PersonalInfo.fromJson(json["personal_info"]),
        addr: json["addr"] == null ? null : Addr.fromJson(json["addr"]),
        occupationInfo: json["occupation_info"] == null
            ? null
            : OccupationInfo.fromJson(json["occupation_info"]),
        academic: json["academic"] == null
            ? []
            : List<Academic>.from(
                json["academic"]!.map((x) => Academic.fromJson(x))),
        workingExperience: json["working_experience"] == null
            ? []
            : List<WorkingExperience>.from(json["working_experience"]!
                .map((x) => WorkingExperience.fromJson(x))),
        familyInfo: json["family_info"] == null
            ? null
            : FamilyInfo.fromJson(json["family_info"]),
      );

  Map<String, dynamic> toJson() => {
        "system_info": systemInfo?.toJson(),
        "personal_info": personalInfo?.toJson(),
        "addr": addr?.toJson(),
        "occupation_info": occupationInfo?.toJson(),
        "academic": academic == null
            ? []
            : List<dynamic>.from(academic!.map((x) => x.toJson())),
        "working_experience": workingExperience == null
            ? []
            : List<dynamic>.from(workingExperience!.map((x) => x.toJson())),
        "family_info": familyInfo?.toJson(),
      };
}

class Academic {
  final String? qualification;
  final String? institution;
  final String? year;

  Academic({
    this.qualification,
    this.institution,
    this.year,
  });

  factory Academic.fromJson(Map<String, dynamic> json) => Academic(
        qualification: json["qualification"],
        institution: json["institution"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "qualification": qualification,
        "institution": institution,
        "year": year,
      };
}

class Addr {
  final Mailing? permanent;
  final Mailing? mailing;

  Addr({
    this.permanent,
    this.mailing,
  });

  factory Addr.fromJson(Map<String, dynamic> json) => Addr(
        permanent: json["permanent"] == null
            ? null
            : Mailing.fromJson(json["permanent"]),
        mailing:
            json["mailing"] == null ? null : Mailing.fromJson(json["mailing"]),
      );

  Map<String, dynamic> toJson() => {
        "permanent": permanent?.toJson(),
        "mailing": mailing?.toJson(),
      };
}

class Mailing {
  final String? line1;
  final String? line2;
  final String? zipcode;
  final String? city;
  final String? state;
  final String? country;

  Mailing({
    this.line1,
    this.line2,
    this.zipcode,
    this.city,
    this.state,
    this.country,
  });

  factory Mailing.fromJson(Map<String, dynamic> json) => Mailing(
        line1: json["line1"],
        line2: json["line2"],
        zipcode: json["zipcode"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "line1": line1,
        "line2": line2,
        "zipcode": zipcode,
        "city": city,
        "state": state,
        "country": country,
      };
}

class FamilyInfo {
  final String? maritalStatus;
  final Spouse? spouse;
  final Ther? father;
  final Ther? mother;
  final List<ChildDetail>? childDetail;

  FamilyInfo({
    this.maritalStatus,
    this.spouse,
    this.father,
    this.mother,
    this.childDetail,
  });

  factory FamilyInfo.fromJson(Map<String, dynamic> json) => FamilyInfo(
        maritalStatus: json["marital_status"],
        spouse: json["spouse"] == null ? null : Spouse.fromJson(json["spouse"]),
        father: json["father"] == null ? null : Ther.fromJson(json["father"]),
        mother: json["mother"] == null ? null : Ther.fromJson(json["mother"]),
        childDetail: json["child_detail"] == null
            ? []
            : List<ChildDetail>.from(
                json["child_detail"]!.map((x) => ChildDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "marital_status": maritalStatus,
        "spouse": spouse?.toJson(),
        "father": father?.toJson(),
        "mother": mother?.toJson(),
        "child_detail": childDetail == null
            ? []
            : List<dynamic>.from(childDetail!.map((x) => x.toJson())),
      };
}

class ChildDetail {
  final String? name;
  final String? ic;
  final String? schoolJob;
  final String? dob;

  ChildDetail({
    this.name,
    this.ic,
    this.schoolJob,
    this.dob,
  });

  factory ChildDetail.fromJson(Map<String, dynamic> json) => ChildDetail(
        name: json["name"],
        ic: json["ic"],
        schoolJob: json["school_job"],
        dob: json["dob"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "ic": ic,
        "school_job": schoolJob,
        "dob": dob,
      };
}

class Ther {
  final String? name;

  Ther({
    this.name,
  });

  factory Ther.fromJson(Map<String, dynamic> json) => Ther(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Spouse {
  final String? name;
  final String? ic;
  final String? phoneNum;
  final String? occupation;
  final String? employer;

  Spouse({
    this.name,
    this.ic,
    this.phoneNum,
    this.occupation,
    this.employer,
  });

  factory Spouse.fromJson(Map<String, dynamic> json) => Spouse(
        name: json["name"],
        ic: json["ic"],
        phoneNum: json["phone_num"],
        occupation: json["occupation"],
        employer: json["employer"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "ic": ic,
        "phone_num": phoneNum,
        "occupation": occupation,
        "employer": employer,
      };
}

class OccupationInfo {
  final String? qualification;
  final String? occupation;
  final String? division;
  final String? status;
  final String? grade;
  final String? branch;
  final String? confirmDt;
  final String? endDt;
  final String? visaExpiry;
  final String? permitExpiry;
  final String? passportExpiry;
  final String? contractExpiry;

  OccupationInfo({
    this.qualification,
    this.occupation,
    this.division,
    this.status,
    this.grade,
    this.branch,
    this.confirmDt,
    this.endDt,
    this.visaExpiry,
    this.permitExpiry,
    this.passportExpiry,
    this.contractExpiry,
  });

  factory OccupationInfo.fromJson(Map<String, dynamic> json) => OccupationInfo(
        qualification: json["qualification"],
        occupation: json["occupation"],
        division: json["division"],
        status: json["status"],
        grade: json["grade"],
        branch: json["branch"],
        confirmDt: json["confirm_dt"],
        visaExpiry: json["visa_expiry"],
        permitExpiry: json["permit_expiry"],
        passportExpiry: json["passport_expiry"],
        contractExpiry: json["contract_expiry"],
      );

  Map<String, dynamic> toJson() => {
        "qualification": qualification,
        "occupation": occupation,
        "division": division,
        "status": status,
        "grade": grade,
        "branch": branch,
        "confirm_dt": confirmDt,
        "end_dt": endDt!,
        "visa_expiry": visaExpiry,
        "permit_expiry": permitExpiry,
        "passport_expiry": passportExpiry,
        "contract_expiry": contractExpiry,
      };
}

class PersonalInfo {
  final String? race;
  final String? religion;
  final String? gender;
  final String? nationality;
  final String? birthPlace;
  final String? dob;
  final String? telNum;

  PersonalInfo({
    this.race,
    this.religion,
    this.gender,
    this.nationality,
    this.birthPlace,
    this.dob,
    this.telNum,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => PersonalInfo(
        race: json["race"],
        religion: json["religion"],
        gender: json["gender"],
        nationality: json["nationality"],
        birthPlace: json["birth_place"],
        dob: json["dob"],
        telNum: json["tel_num"],
      );

  Map<String, dynamic> toJson() => {
        "race": race,
        "religion": religion,
        "gender": gender,
        "nationality": nationality,
        "birth_place": birthPlace,
        "dob": dob!,
        "tel_num": telNum,
      };
}

class SystemInfo {
  final String? name;
  final String? ic;
  final String? phoneNum;
  final String? email;
  final String? sysLevel;
  final String? sysAccess;
  final String? startDt;
  final String? status;
  final String? image;

  SystemInfo({
    this.name,
    this.ic,
    this.phoneNum,
    this.email,
    this.sysLevel,
    this.sysAccess,
    this.startDt,
    this.status,
    this.image,
  });

  factory SystemInfo.fromJson(Map<String, dynamic> json) => SystemInfo(
        name: json["name"],
        ic: json["ic"],
        phoneNum: json["phone_num"],
        email: json["email"],
        sysLevel: json["sys_level"],
        sysAccess: json["sys_access"],
        startDt: json["start_dt"],
        status: json["status"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "ic": ic,
        "phone_num": phoneNum,
        "email": email,
        "sys_level": sysLevel,
        "sys_access": sysAccess,
        "start_dt": startDt,
        "status": status,
        "image": image,
      };
}

class WorkingExperience {
  final int? id;
  final String? job;
  final String? jobdiv;
  final String? jobend;
  final String? joblvl;
  final String? employer;
  final String? jobstart;

  WorkingExperience({
    this.id,
    this.job,
    this.jobdiv,
    this.jobend,
    this.joblvl,
    this.employer,
    this.jobstart,
  });

  factory WorkingExperience.fromJson(Map<String, dynamic> json) =>
      WorkingExperience(
        id: json["id"],
        job: json["job"],
        jobdiv: json["jobdiv"],
        jobend: json["jobend"],
        joblvl: json["joblvl"],
        employer: json["employer"],
        jobstart: json["jobstart"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "job": job,
        "jobdiv": jobdiv,
        "jobend": jobend,
        "joblvl": joblvl,
        "employer": employer,
        "jobstart": jobstart,
      };
}
