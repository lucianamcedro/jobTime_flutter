// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetProjectsCollection on Isar {
  IsarCollection<Projects> get projects => getCollection();
}

const ProjectsSchema = CollectionSchema(
  name: 'Projects',
  schema:
      '{"name":"Projects","idName":"id","properties":[{"name":"name","type":"String"},{"name":"status","type":"Long"}],"indexes":[],"links":[{"name":"tasks","target":"ProjectsTask"}]}',
  idName: 'id',
  propertyIds: {'name': 0, 'status': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'tasks': 0},
  backlinkLinkNames: {},
  getId: _projectsGetId,
  setId: _projectsSetId,
  getLinks: _projectsGetLinks,
  attachLinks: _projectsAttachLinks,
  serializeNative: _projectsSerializeNative,
  deserializeNative: _projectsDeserializeNative,
  deserializePropNative: _projectsDeserializePropNative,
  serializeWeb: _projectsSerializeWeb,
  deserializeWeb: _projectsDeserializeWeb,
  deserializePropWeb: _projectsDeserializePropWeb,
  version: 3,
);

int? _projectsGetId(Projects object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _projectsSetId(Projects object, int id) {
  object.id = id;
}

List<IsarLinkBase> _projectsGetLinks(Projects object) {
  return [object.tasks];
}

const _projectsProjectStatusConverter = ProjectStatusConverter();

void _projectsSerializeNative(
    IsarCollection<Projects> collection,
    IsarRawObject rawObj,
    Projects object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_name.length) as int;
  final value1 = _projectsProjectStatusConverter.toIsar(object.status);
  final _status = value1;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _name);
  writer.writeLong(offsets[1], _status);
}

Projects _projectsDeserializeNative(IsarCollection<Projects> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Projects();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  object.status =
      _projectsProjectStatusConverter.fromIsar(reader.readLong(offsets[1]));
  _projectsAttachLinks(collection, id, object);
  return object;
}

P _projectsDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (_projectsProjectStatusConverter.fromIsar(reader.readLong(offset)))
          as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _projectsSerializeWeb(
    IsarCollection<Projects> collection, Projects object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(
      jsObj, 'status', _projectsProjectStatusConverter.toIsar(object.status));
  return jsObj;
}

Projects _projectsDeserializeWeb(
    IsarCollection<Projects> collection, dynamic jsObj) {
  final object = Projects();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.status = _projectsProjectStatusConverter.fromIsar(
      IsarNative.jsObjectGet(jsObj, 'status') ?? double.negativeInfinity);
  _projectsAttachLinks(collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _projectsDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'status':
      return (_projectsProjectStatusConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'status') ??
              double.negativeInfinity)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _projectsAttachLinks(IsarCollection col, int id, Projects object) {
  object.tasks.attach(col, col.isar.projectsTasks, 'tasks', id);
}

extension ProjectsQueryWhereSort on QueryBuilder<Projects, Projects, QWhere> {
  QueryBuilder<Projects, Projects, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ProjectsQueryWhere on QueryBuilder<Projects, Projects, QWhereClause> {
  QueryBuilder<Projects, Projects, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Projects, Projects, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Projects, Projects, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Projects, Projects, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Projects, Projects, QAfterWhereClause> idBetween(
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

extension ProjectsQueryFilter
    on QueryBuilder<Projects, Projects, QFilterCondition> {
  QueryBuilder<Projects, Projects, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> statusEqualTo(
      ProjectStatus value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'status',
      value: _projectsProjectStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> statusGreaterThan(
    ProjectStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'status',
      value: _projectsProjectStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> statusLessThan(
    ProjectStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'status',
      value: _projectsProjectStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<Projects, Projects, QAfterFilterCondition> statusBetween(
    ProjectStatus lower,
    ProjectStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'status',
      lower: _projectsProjectStatusConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _projectsProjectStatusConverter.toIsar(upper),
      includeUpper: includeUpper,
    ));
  }
}

extension ProjectsQueryLinks
    on QueryBuilder<Projects, Projects, QFilterCondition> {
  QueryBuilder<Projects, Projects, QAfterFilterCondition> tasks(
      FilterQuery<ProjectsTask> q) {
    return linkInternal(
      isar.projectsTasks,
      q,
      'tasks',
    );
  }
}

extension ProjectsQueryWhereSortBy
    on QueryBuilder<Projects, Projects, QSortBy> {
  QueryBuilder<Projects, Projects, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> sortByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> sortByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }
}

extension ProjectsQueryWhereSortThenBy
    on QueryBuilder<Projects, Projects, QSortThenBy> {
  QueryBuilder<Projects, Projects, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> thenByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<Projects, Projects, QAfterSortBy> thenByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }
}

extension ProjectsQueryWhereDistinct
    on QueryBuilder<Projects, Projects, QDistinct> {
  QueryBuilder<Projects, Projects, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Projects, Projects, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Projects, Projects, QDistinct> distinctByStatus() {
    return addDistinctByInternal('status');
  }
}

extension ProjectsQueryProperty
    on QueryBuilder<Projects, Projects, QQueryProperty> {
  QueryBuilder<Projects, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Projects, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Projects, ProjectStatus, QQueryOperations> statusProperty() {
    return addPropertyNameInternal('status');
  }
}
