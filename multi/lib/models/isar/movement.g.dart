// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovementCollection on Isar {
  IsarCollection<Movement> get movements => this.collection();
}

const MovementSchema = CollectionSchema(
  name: r'Movement',
  id: -1597257643361870204,
  properties: {
    r'brand': PropertySchema(
      id: 0,
      name: r'brand',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
    ),
    r'dateMovement': PropertySchema(
      id: 2,
      name: r'dateMovement',
      type: IsarType.dateTime,
    ),
    r'imagePath': PropertySchema(
      id: 3,
      name: r'imagePath',
      type: IsarType.string,
    ),
    r'invoiceName': PropertySchema(
      id: 4,
      name: r'invoiceName',
      type: IsarType.string,
    ),
    r'invoiceNumber': PropertySchema(
      id: 5,
      name: r'invoiceNumber',
      type: IsarType.string,
    ),
    r'item': PropertySchema(
      id: 6,
      name: r'item',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'obs': PropertySchema(
      id: 8,
      name: r'obs',
      type: IsarType.string,
    ),
    r'orderId': PropertySchema(
      id: 9,
      name: r'orderId',
      type: IsarType.string,
    ),
    r'presentation': PropertySchema(
      id: 10,
      name: r'presentation',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 11,
      name: r'price',
      type: IsarType.double,
    ),
    r'quantity': PropertySchema(
      id: 12,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'quantitySale': PropertySchema(
      id: 13,
      name: r'quantitySale',
      type: IsarType.long,
    ),
    r'stock': PropertySchema(
      id: 14,
      name: r'stock',
      type: IsarType.long,
    ),
    r'subCategory': PropertySchema(
      id: 15,
      name: r'subCategory',
      type: IsarType.string,
    ),
    r'subTotal': PropertySchema(
      id: 16,
      name: r'subTotal',
      type: IsarType.double,
    ),
    r'typeMovement': PropertySchema(
      id: 17,
      name: r'typeMovement',
      type: IsarType.string,
    ),
    r'unitMeasurement': PropertySchema(
      id: 18,
      name: r'unitMeasurement',
      type: IsarType.string,
    )
  },
  estimateSize: _movementEstimateSize,
  serialize: _movementSerialize,
  deserialize: _movementDeserialize,
  deserializeProp: _movementDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _movementGetId,
  getLinks: _movementGetLinks,
  attach: _movementAttach,
  version: '3.1.0+1',
);

int _movementEstimateSize(
  Movement object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.brand.length * 3;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.imagePath.length * 3;
  bytesCount += 3 + object.invoiceName.length * 3;
  bytesCount += 3 + object.invoiceNumber.length * 3;
  bytesCount += 3 + object.item.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.obs.length * 3;
  bytesCount += 3 + object.orderId.length * 3;
  bytesCount += 3 + object.presentation.length * 3;
  bytesCount += 3 + object.subCategory.length * 3;
  bytesCount += 3 + object.typeMovement.length * 3;
  bytesCount += 3 + object.unitMeasurement.length * 3;
  return bytesCount;
}

void _movementSerialize(
  Movement object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.brand);
  writer.writeString(offsets[1], object.category);
  writer.writeDateTime(offsets[2], object.dateMovement);
  writer.writeString(offsets[3], object.imagePath);
  writer.writeString(offsets[4], object.invoiceName);
  writer.writeString(offsets[5], object.invoiceNumber);
  writer.writeString(offsets[6], object.item);
  writer.writeString(offsets[7], object.name);
  writer.writeString(offsets[8], object.obs);
  writer.writeString(offsets[9], object.orderId);
  writer.writeString(offsets[10], object.presentation);
  writer.writeDouble(offsets[11], object.price);
  writer.writeLong(offsets[12], object.quantity);
  writer.writeLong(offsets[13], object.quantitySale);
  writer.writeLong(offsets[14], object.stock);
  writer.writeString(offsets[15], object.subCategory);
  writer.writeDouble(offsets[16], object.subTotal);
  writer.writeString(offsets[17], object.typeMovement);
  writer.writeString(offsets[18], object.unitMeasurement);
}

Movement _movementDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Movement();
  object.brand = reader.readString(offsets[0]);
  object.category = reader.readString(offsets[1]);
  object.dateMovement = reader.readDateTime(offsets[2]);
  object.id = id;
  object.imagePath = reader.readString(offsets[3]);
  object.invoiceName = reader.readString(offsets[4]);
  object.invoiceNumber = reader.readString(offsets[5]);
  object.item = reader.readString(offsets[6]);
  object.name = reader.readString(offsets[7]);
  object.obs = reader.readString(offsets[8]);
  object.orderId = reader.readString(offsets[9]);
  object.presentation = reader.readString(offsets[10]);
  object.price = reader.readDouble(offsets[11]);
  object.quantity = reader.readLong(offsets[12]);
  object.quantitySale = reader.readLong(offsets[13]);
  object.stock = reader.readLong(offsets[14]);
  object.subCategory = reader.readString(offsets[15]);
  object.subTotal = reader.readDouble(offsets[16]);
  object.typeMovement = reader.readString(offsets[17]);
  object.unitMeasurement = reader.readString(offsets[18]);
  return object;
}

P _movementDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movementGetId(Movement object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _movementGetLinks(Movement object) {
  return [];
}

void _movementAttach(IsarCollection<dynamic> col, Id id, Movement object) {
  object.id = id;
}

extension MovementQueryWhereSort on QueryBuilder<Movement, Movement, QWhere> {
  QueryBuilder<Movement, Movement, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MovementQueryWhere on QueryBuilder<Movement, Movement, QWhereClause> {
  QueryBuilder<Movement, Movement, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Movement, Movement, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Movement, Movement, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Movement, Movement, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovementQueryFilter
    on QueryBuilder<Movement, Movement, QFilterCondition> {
  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> dateMovementEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateMovement',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      dateMovementGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateMovement',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> dateMovementLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateMovement',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> dateMovementBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateMovement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'invoiceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'invoiceName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceName',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceName',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> invoiceNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'invoiceNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      invoiceNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'item',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'item',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> itemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'item',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'obs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'obs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'obs',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> obsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'obs',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> orderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      presentationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'presentation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      presentationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'presentation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> presentationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'presentation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      presentationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presentation',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      presentationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'presentation',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantitySaleEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantitySale',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      quantitySaleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantitySale',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantitySaleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantitySale',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> quantitySaleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantitySale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> stockGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> stockLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> stockBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      subCategoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      subCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subTotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subTotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subTotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> subTotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      typeMovementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeMovement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      typeMovementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeMovement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition> typeMovementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeMovement',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      typeMovementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeMovement',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      typeMovementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeMovement',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitMeasurement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unitMeasurement',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unitMeasurement',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitMeasurement',
        value: '',
      ));
    });
  }

  QueryBuilder<Movement, Movement, QAfterFilterCondition>
      unitMeasurementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unitMeasurement',
        value: '',
      ));
    });
  }
}

extension MovementQueryObject
    on QueryBuilder<Movement, Movement, QFilterCondition> {}

extension MovementQueryLinks
    on QueryBuilder<Movement, Movement, QFilterCondition> {}

extension MovementQuerySortBy on QueryBuilder<Movement, Movement, QSortBy> {
  QueryBuilder<Movement, Movement, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByDateMovement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateMovement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByDateMovementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateMovement', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByInvoiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceName', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByInvoiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceName', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByObs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByObsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByPresentation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentation', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByPresentationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentation', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByQuantitySale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantitySale', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByQuantitySaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantitySale', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortBySubCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subCategory', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortBySubCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subCategory', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortBySubTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortBySubTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByTypeMovement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeMovement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByTypeMovementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeMovement', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByUnitMeasurement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitMeasurement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> sortByUnitMeasurementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitMeasurement', Sort.desc);
    });
  }
}

extension MovementQuerySortThenBy
    on QueryBuilder<Movement, Movement, QSortThenBy> {
  QueryBuilder<Movement, Movement, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByDateMovement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateMovement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByDateMovementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateMovement', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByInvoiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceName', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByInvoiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceName', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByObs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByObsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByPresentation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentation', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByPresentationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentation', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByQuantitySale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantitySale', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByQuantitySaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantitySale', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenBySubCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subCategory', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenBySubCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subCategory', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenBySubTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenBySubTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByTypeMovement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeMovement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByTypeMovementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeMovement', Sort.desc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByUnitMeasurement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitMeasurement', Sort.asc);
    });
  }

  QueryBuilder<Movement, Movement, QAfterSortBy> thenByUnitMeasurementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitMeasurement', Sort.desc);
    });
  }
}

extension MovementQueryWhereDistinct
    on QueryBuilder<Movement, Movement, QDistinct> {
  QueryBuilder<Movement, Movement, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByDateMovement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateMovement');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByInvoiceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByInvoiceNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByItem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'item', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByObs(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'obs', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByOrderId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByPresentation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'presentation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByQuantitySale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantitySale');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctBySubCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subCategory', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctBySubTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subTotal');
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByTypeMovement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeMovement', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movement, Movement, QDistinct> distinctByUnitMeasurement(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitMeasurement',
          caseSensitive: caseSensitive);
    });
  }
}

extension MovementQueryProperty
    on QueryBuilder<Movement, Movement, QQueryProperty> {
  QueryBuilder<Movement, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<Movement, DateTime, QQueryOperations> dateMovementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateMovement');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> invoiceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceName');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> invoiceNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceNumber');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> itemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'item');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> obsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'obs');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> orderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderId');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> presentationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'presentation');
    });
  }

  QueryBuilder<Movement, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<Movement, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<Movement, int, QQueryOperations> quantitySaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantitySale');
    });
  }

  QueryBuilder<Movement, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> subCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subCategory');
    });
  }

  QueryBuilder<Movement, double, QQueryOperations> subTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subTotal');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> typeMovementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeMovement');
    });
  }

  QueryBuilder<Movement, String, QQueryOperations> unitMeasurementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitMeasurement');
    });
  }
}
