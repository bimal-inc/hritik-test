class Welcome {
  Welcome({
    required this.message,
    this.object,
    required this.listss,
    required this.status,
    required this.totalElements,
    required this.totalPages,
  });
  late final String message;
  late final Null object;
  late final List<Listss> listss;
  late final bool status;
  late final int totalElements;
  late final int totalPages;

  Welcome.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    object = null;
    listss = List.from(json['listss']).map((e) => Listss.fromJson(e)).toList();
    status = json['status'];
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['object'] = object;
    _data['listss'] = listss.map((e) => e.toJson()).toList();
    _data['status'] = status;
    _data['totalElements'] = totalElements;
    _data['totalPages'] = totalPages;
    return _data;
  }
}

class Listss {
  Listss({
    required this.id,
    this.name,
    this.updatedBy,
    this.createdBy,
    required this.createdDate,
    this.pageSize,
    required this.status,
    this.resourceLink,
    required this.day,
    required this.startTime,
    required this.endTime,
    required this.classType,
    required this.year,
    required this.specialization,
    required this.duration,
    required this.effectiveDate,
    this.batchId,
    this.groupDto,
    this.courseDto,
    required this.moduleDto,
    required this.userDto,
    required this.roomDto,
    required this.groupList,
    this.groups,
    this.courseId,
    this.routineDate,
    this.startTimeResp,
    this.endTimeResp,
    this.teacherDto,
    this.previousRoutineId,
    this.dateOf,
    this.block,
    this.course,
    this.intake,
    required this.routineBatch,
  });
  late final int id;
  late final Null name;
  late final Null updatedBy;
  late final Null createdBy;
  late final String createdDate;
  late final Null pageSize;
  late final String status;
  late final Null resourceLink;
  late final String day;
  late final String startTime;
  late final String endTime;
  late final String classType;
  late final String year;
  late final String specialization;
  late final String duration;
  late final String effectiveDate;
  late final Null batchId;
  late final Null groupDto;
  late final Null courseDto;
  late final ModuleDto moduleDto;
  late final UserDto userDto;
  late final RoomDto roomDto;
  late final List<GroupList> groupList;
  late final Null groups;
  late final Null courseId;
  late final Null routineDate;
  late final Null startTimeResp;
  late final Null endTimeResp;
  late final Null teacherDto;
  late final Null previousRoutineId;
  late final Null dateOf;
  late final Null block;
  late final Null course;
  late final Null intake;
  late final String routineBatch;

  Listss.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = null;
    updatedBy = null;
    createdBy = null;
    createdDate = json['createdDate'];
    pageSize = null;
    status = json['status'];
    resourceLink = null;
    day = json['day'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    classType = json['classType'];
    year = json['year'];
    specialization = json['specialization'];
    duration = json['duration'];
    effectiveDate = json['effectiveDate'];
    batchId = null;
    groupDto = null;
    courseDto = null;
    moduleDto = ModuleDto.fromJson(json['moduleDto']);
    userDto = UserDto.fromJson(json['userDto']);
    roomDto = RoomDto.fromJson(json['roomDto']);
    groupList =
        List.from(json['groupList']).map((e) => GroupList.fromJson(e)).toList();
    groups = null;
    courseId = null;
    routineDate = null;
    startTimeResp = null;
    endTimeResp = null;
    teacherDto = null;
    previousRoutineId = null;
    dateOf = null;
    block = null;
    course = null;
    intake = null;
    routineBatch = json['routineBatch'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['updatedBy'] = updatedBy;
    _data['createdBy'] = createdBy;
    _data['createdDate'] = createdDate;
    _data['pageSize'] = pageSize;
    _data['status'] = status;
    _data['resourceLink'] = resourceLink;
    _data['day'] = day;
    _data['startTime'] = startTime;
    _data['endTime'] = endTime;
    _data['classType'] = classType;
    _data['year'] = year;
    _data['specialization'] = specialization;
    _data['duration'] = duration;
    _data['effectiveDate'] = effectiveDate;
    _data['batchId'] = batchId;
    _data['groupDto'] = groupDto;
    _data['courseDto'] = courseDto;
    _data['moduleDto'] = moduleDto.toJson();
    _data['userDto'] = userDto.toJson();
    _data['roomDto'] = roomDto.toJson();
    _data['groupList'] = groupList.map((e) => e.toJson()).toList();
    _data['groups'] = groups;
    _data['courseId'] = courseId;
    _data['routineDate'] = routineDate;
    _data['startTimeResp'] = startTimeResp;
    _data['endTimeResp'] = endTimeResp;
    _data['teacherDto'] = teacherDto;
    _data['previousRoutineId'] = previousRoutineId;
    _data['dateOf'] = dateOf;
    _data['block'] = block;
    _data['course'] = course;
    _data['intake'] = intake;
    _data['routineBatch'] = routineBatch;
    return _data;
  }
}

class ModuleDto {
  ModuleDto({
    required this.id,
    required this.name,
    this.updatedBy,
    this.createdBy,
    required this.createdDate,
    this.pageSize,
    required this.status,
    this.resourceLink,
    required this.code,
    this.teacherName,
  });
  late final int id;
  late final String name;
  late final Null updatedBy;
  late final Null createdBy;
  late final String createdDate;
  late final Null pageSize;
  late final String status;
  late final Null resourceLink;
  late final String code;
  late final Null teacherName;

  ModuleDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    updatedBy = null;
    createdBy = null;
    createdDate = json['createdDate'];
    pageSize = null;
    status = json['status'];
    resourceLink = null;
    code = json['code'];
    teacherName = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['updatedBy'] = updatedBy;
    _data['createdBy'] = createdBy;
    _data['createdDate'] = createdDate;
    _data['pageSize'] = pageSize;
    _data['status'] = status;
    _data['resourceLink'] = resourceLink;
    _data['code'] = code;
    _data['teacherName'] = teacherName;
    return _data;
  }
}

class UserDto {
  UserDto({
    required this.id,
    required this.name,
    this.updatedBy,
    this.createdBy,
    required this.createdDate,
    this.pageSize,
    required this.status,
    this.resourceLink,
    this.teacherId,
    this.email,
    this.contactNumber,
    this.attLogId,
    this.punchInDateTime,
    this.punchOutDateTime,
    this.routineId,
    this.deviceId,
  });
  late final int id;
  late final String name;
  late final Null updatedBy;
  late final Null createdBy;
  late final String createdDate;
  late final Null pageSize;
  late final String status;
  late final Null resourceLink;
  late final Null teacherId;
  late final Null email;
  late final Null contactNumber;
  late final Null attLogId;
  late final Null punchInDateTime;
  late final Null punchOutDateTime;
  late final Null routineId;
  late final Null deviceId;

  UserDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    updatedBy = null;
    createdBy = null;
    createdDate = json['createdDate'];
    pageSize = null;
    status = json['status'];
    resourceLink = null;
    teacherId = null;
    email = null;
    contactNumber = null;
    attLogId = null;
    punchInDateTime = null;
    punchOutDateTime = null;
    routineId = null;
    deviceId = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['updatedBy'] = updatedBy;
    _data['createdBy'] = createdBy;
    _data['createdDate'] = createdDate;
    _data['pageSize'] = pageSize;
    _data['status'] = status;
    _data['resourceLink'] = resourceLink;
    _data['teacherId'] = teacherId;
    _data['email'] = email;
    _data['contactNumber'] = contactNumber;
    _data['attLogId'] = attLogId;
    _data['punchInDateTime'] = punchInDateTime;
    _data['punchOutDateTime'] = punchOutDateTime;
    _data['routineId'] = routineId;
    _data['deviceId'] = deviceId;
    return _data;
  }
}

class RoomDto {
  RoomDto({
    required this.id,
    required this.name,
    this.updatedBy,
    this.createdBy,
    required this.createdDate,
    this.pageSize,
    required this.status,
    this.resourceLink,
    this.roomCode,
    required this.block,
  });
  late final int id;
  late final String name;
  late final Null updatedBy;
  late final Null createdBy;
  late final String createdDate;
  late final Null pageSize;
  late final String status;
  late final Null resourceLink;
  late final Null roomCode;
  late final String block;

  RoomDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    updatedBy = null;
    createdBy = null;
    createdDate = json['createdDate'];
    pageSize = null;
    status = json['status'];
    resourceLink = null;
    roomCode = null;
    block = json['block'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['updatedBy'] = updatedBy;
    _data['createdBy'] = createdBy;
    _data['createdDate'] = createdDate;
    _data['pageSize'] = pageSize;
    _data['status'] = status;
    _data['resourceLink'] = resourceLink;
    _data['roomCode'] = roomCode;
    _data['block'] = block;
    return _data;
  }
}

class GroupList {
  GroupList({
    required this.id,
    required this.name,
    this.updatedBy,
    this.createdBy,
    required this.createdDate,
    this.pageSize,
    required this.status,
    this.resourceLink,
    required this.groupCode,
    this.courseEntity,
  });
  late final int id;
  late final String name;
  late final Null updatedBy;
  late final Null createdBy;
  late final String createdDate;
  late final Null pageSize;
  late final String status;
  late final Null resourceLink;
  late final String groupCode;
  late final Null courseEntity;

  GroupList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    updatedBy = null;
    createdBy = null;
    createdDate = json['createdDate'];
    pageSize = null;
    status = json['status'];
    resourceLink = null;
    groupCode = json['groupCode'];
    courseEntity = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['updatedBy'] = updatedBy;
    _data['createdBy'] = createdBy;
    _data['createdDate'] = createdDate;
    _data['pageSize'] = pageSize;
    _data['status'] = status;
    _data['resourceLink'] = resourceLink;
    _data['groupCode'] = groupCode;
    _data['courseEntity'] = courseEntity;
    return _data;
  }
}
