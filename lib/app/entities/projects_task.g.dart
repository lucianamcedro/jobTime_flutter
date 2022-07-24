// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetProjectsTaskCollection on Isar {
  IsarCollection<ProjectsTask> get projectsTasks => getCollection();
}

const ProjectsTaskSchema = CollectionSchema(
  name: 'ProjectsTask',
  schema:
      '{"name":"ProjectsTask","idName":"id","properties":[{"name":"created","type":"Long"},{"name":"duration","type":"Long"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'created': 0, 'duration': 1, 'name': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _projectsTaskGetId,
  setId: _projectsTaskSetId,
  getLinks: _projectsTaskGetLinks,
  attachLinks: _projectsTaskAttachLinks,
  serializeNative: _projectsTaskSerializeNative,
  deserializeNative: _projectsTaskDeserializeNative,
  deserializePropNative: _projectsTaskDeserializePropNative,
  serializeWeb: _projectsTaskSerializeWeb,
  deserializeWeb: _projectsTaskDeserializeWeb,
  deserializePropWeb: _projectsTaskDeserializePropWeb,
  version: 3,
);

int? _projectsTaskGetId(ProjectsTask object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _projectsTaskSetId(ProjectsTask object, int id) {
  object.id = id;
}

List<IsarLinkBase> _projectsTaskGetLinks(ProjectsTask object) {
  return [];
}

void _projectsTaskSerializeNative(
    IsarCollection<ProjectsTask> collection,
    IsarRawObject rawObj,
    ProjectsTask object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.created;
  final _created = value0;
  final value1 = object.duration;
  final _duration = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _created);
  writer.writeLong(offsets[1], _duration);
  writer.writeBytes(offsets[2], _name);
}

ProjectsTask _projectsTaskDeserializeNative(
    IsarCollection<ProjectsTask> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ProjectsTask();
  object.created = reader.readDateTime(offsets[0]);
  object.duration = reader.readLong(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  return object;
}

P _projectsTaskDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _projectsTaskSerializeWeb(
    IsarCollection<ProjectsTask> collection, ProjectsTask object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'created', object.created.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'duration', object.duration);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

ProjectsTask _projectsTaskDeserializeWeb(
    IsarCollection<ProjectsTask> collection, dynamic jsObj) {
  final object = ProjectsTask();
  object.created = IsarNative.jsObjectGet(jsObj, 'created') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'created'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.duration =
      IsarNative.jsObjectGet(jsObj, 'duration') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  return object;
}

P _projectsTaskDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'created':
      return (IsarNative.jsObjectGet(jsObj, 'created') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'created'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'duration':
      return (IsarNative.jsObjectGet(jsObj, 'duration') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _projectsTaskAttachLinks(
    IsarCollection col, int id, ProjectsTask object) {}

extension ProjectsTaskQueryWhereSort
    on QueryBuilder<ProjectsTask, ProjectsTask, QWhere> {
  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ProjectsTaskQueryWhere
    on QueryBuilder<ProjectsTask, ProjectsTask, QWhereClause> {
  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension ProjectsTaskQueryFilter
    on QueryBuilder<ProjectsTask, ProjectsTask, QFilterCondition> {
  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      createdEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      createdGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      createdLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      createdBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'created',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      durationEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      durationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      durationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      durationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'duration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProjectsTaskQueryLinks
    on QueryBuilder<ProjectsTask, ProjectsTask, QFilterCondition> {}

extension ProjectsTaskQueryWhereSortBy
    on QueryBuilder<ProjectsTask, ProjectsTask, QSortBy> {
  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectsTaskQueryWhereSortThenBy
    on QueryBuilder<ProjectsTask, ProjectsTask, QSortThenBy> {
  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectsTaskQueryWhereDistinct
    on QueryBuilder<ProjectsTask, ProjectsTask, QDistinct> {
  QueryBuilder<ProjectsTask, ProjectsTask, QDistinct> distinctByCreated() {
    return addDistinctByInternal('created');
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QDistinct> distinctByDuration() {
    return addDistinctByInternal('duration');
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<ProjectsTask, ProjectsTask, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension ProjectsTaskQueryProperty
    on QueryBuilder<ProjectsTask, ProjectsTask, QQueryProperty> {
  QueryBuilder<ProjectsTask, DateTime, QQueryOperations> createdProperty() {
    return addPropertyNameInternal('created');
  }

  QueryBuilder<ProjectsTask, int, QQueryOperations> durationProperty() {
    return addPropertyNameInternal('duration');
  }

  QueryBuilder<ProjectsTask, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ProjectsTask, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
