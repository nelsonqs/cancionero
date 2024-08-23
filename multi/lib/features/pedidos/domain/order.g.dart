// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrderCollection on Isar {
  IsarCollection<Order> get orders => this.collection();
}

const OrderSchema = CollectionSchema(
  name: r'Order',
  id: 103494837486634173,
  properties: {
    r'client': PropertySchema(
      id: 0,
      name: r'client',
      type: IsarType.object,
      target: r'Person',
    ),
    r'codeOrder': PropertySchema(
      id: 1,
      name: r'codeOrder',
      type: IsarType.string,
    ),
    r'createOn': PropertySchema(
      id: 2,
      name: r'createOn',
      type: IsarType.dateTime,
    ),
    r'dateOnSale': PropertySchema(
      id: 3,
      name: r'dateOnSale',
      type: IsarType.dateTime,
    ),
    r'discount': PropertySchema(
      id: 4,
      name: r'discount',
      type: IsarType.long,
    ),
    r'isSale': PropertySchema(
      id: 5,
      name: r'isSale',
      type: IsarType.bool,
    ),
    r'obs': PropertySchema(
      id: 6,
      name: r'obs',
      type: IsarType.string,
    ),
    r'products': PropertySchema(
      id: 7,
      name: r'products',
      type: IsarType.objectList,
      target: r'ProductOrder',
    ),
    r'totalWeightProducts': PropertySchema(
      id: 8,
      name: r'totalWeightProducts',
      type: IsarType.double,
    ),
    r'totalWithDiscount': PropertySchema(
      id: 9,
      name: r'totalWithDiscount',
      type: IsarType.double,
    ),
    r'totalWithoutDiscount': PropertySchema(
      id: 10,
      name: r'totalWithoutDiscount',
      type: IsarType.double,
    )
  },
  estimateSize: _orderEstimateSize,
  serialize: _orderSerialize,
  deserialize: _orderDeserialize,
  deserializeProp: _orderDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Person': PersonSchema,
    r'ProductOrder': ProductOrderSchema
  },
  getId: _orderGetId,
  getLinks: _orderGetLinks,
  attach: _orderAttach,
  version: '3.1.0+1',
);

int _orderEstimateSize(
  Order object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.client;
    if (value != null) {
      bytesCount +=
          3 + PersonSchema.estimateSize(value, allOffsets[Person]!, allOffsets);
    }
  }
  bytesCount += 3 + object.codeOrder.length * 3;
  bytesCount += 3 + object.obs.length * 3;
  {
    final list = object.products;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ProductOrder]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ProductOrderSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _orderSerialize(
  Order object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Person>(
    offsets[0],
    allOffsets,
    PersonSchema.serialize,
    object.client,
  );
  writer.writeString(offsets[1], object.codeOrder);
  writer.writeDateTime(offsets[2], object.createOn);
  writer.writeDateTime(offsets[3], object.dateOnSale);
  writer.writeLong(offsets[4], object.discount);
  writer.writeBool(offsets[5], object.isSale);
  writer.writeString(offsets[6], object.obs);
  writer.writeObjectList<ProductOrder>(
    offsets[7],
    allOffsets,
    ProductOrderSchema.serialize,
    object.products,
  );
  writer.writeDouble(offsets[8], object.totalWeightProducts);
  writer.writeDouble(offsets[9], object.totalWithDiscount);
  writer.writeDouble(offsets[10], object.totalWithoutDiscount);
}

Order _orderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Order();
  object.client = reader.readObjectOrNull<Person>(
    offsets[0],
    PersonSchema.deserialize,
    allOffsets,
  );
  object.codeOrder = reader.readString(offsets[1]);
  object.createOn = reader.readDateTime(offsets[2]);
  object.dateOnSale = reader.readDateTime(offsets[3]);
  object.discount = reader.readLong(offsets[4]);
  object.id = id;
  object.isSale = reader.readBool(offsets[5]);
  object.obs = reader.readString(offsets[6]);
  object.products = reader.readObjectList<ProductOrder>(
    offsets[7],
    ProductOrderSchema.deserialize,
    allOffsets,
    ProductOrder(),
  );
  object.totalWeightProducts = reader.readDouble(offsets[8]);
  object.totalWithDiscount = reader.readDouble(offsets[9]);
  object.totalWithoutDiscount = reader.readDouble(offsets[10]);
  return object;
}

P _orderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Person>(
        offset,
        PersonSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readObjectList<ProductOrder>(
        offset,
        ProductOrderSchema.deserialize,
        allOffsets,
        ProductOrder(),
      )) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _orderGetId(Order object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _orderGetLinks(Order object) {
  return [];
}

void _orderAttach(IsarCollection<dynamic> col, Id id, Order object) {
  object.id = id;
}

extension OrderQueryWhereSort on QueryBuilder<Order, Order, QWhere> {
  QueryBuilder<Order, Order, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OrderQueryWhere on QueryBuilder<Order, Order, QWhereClause> {
  QueryBuilder<Order, Order, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Order, Order, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idBetween(
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

extension OrderQueryFilter on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> clientIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'client',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> clientIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'client',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codeOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'codeOrder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'codeOrder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codeOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> codeOrderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codeOrder',
        value: '',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createOnEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createOnGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createOnLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createOnBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> dateOnSaleEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOnSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> dateOnSaleGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOnSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> dateOnSaleLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOnSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> dateOnSaleBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOnSale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> discountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> discountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> discountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> discountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> isSaleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> obsEqualTo(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsGreaterThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsLessThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsBetween(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsStartsWith(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsEndsWith(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> obsContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'obs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> obsMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'obs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> obsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'obs',
        value: '',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> obsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'obs',
        value: '',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'products',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'products',
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWeightProductsEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalWeightProducts',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition>
      totalWeightProductsGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalWeightProducts',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWeightProductsLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalWeightProducts',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWeightProductsBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalWeightProducts',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWithDiscountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalWithDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition>
      totalWithDiscountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalWithDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWithDiscountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalWithDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWithDiscountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalWithDiscount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWithoutDiscountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalWithoutDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition>
      totalWithoutDiscountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalWithoutDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition>
      totalWithoutDiscountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalWithoutDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> totalWithoutDiscountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalWithoutDiscount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension OrderQueryObject on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> client(
      FilterQuery<Person> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'client');
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsElement(
      FilterQuery<ProductOrder> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'products');
    });
  }
}

extension OrderQueryLinks on QueryBuilder<Order, Order, QFilterCondition> {}

extension OrderQuerySortBy on QueryBuilder<Order, Order, QSortBy> {
  QueryBuilder<Order, Order, QAfterSortBy> sortByCodeOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codeOrder', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCodeOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codeOrder', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCreateOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createOn', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCreateOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createOn', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDateOnSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOnSale', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDateOnSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOnSale', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByIsSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSale', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByIsSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSale', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByObs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByObsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWeightProducts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWeightProducts', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWeightProductsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWeightProducts', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWithDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithDiscount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWithDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithDiscount', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWithoutDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithoutDiscount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByTotalWithoutDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithoutDiscount', Sort.desc);
    });
  }
}

extension OrderQuerySortThenBy on QueryBuilder<Order, Order, QSortThenBy> {
  QueryBuilder<Order, Order, QAfterSortBy> thenByCodeOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codeOrder', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCodeOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codeOrder', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCreateOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createOn', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCreateOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createOn', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDateOnSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOnSale', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDateOnSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOnSale', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIsSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSale', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIsSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSale', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByObs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByObsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'obs', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWeightProducts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWeightProducts', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWeightProductsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWeightProducts', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWithDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithDiscount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWithDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithDiscount', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWithoutDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithoutDiscount', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByTotalWithoutDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalWithoutDiscount', Sort.desc);
    });
  }
}

extension OrderQueryWhereDistinct on QueryBuilder<Order, Order, QDistinct> {
  QueryBuilder<Order, Order, QDistinct> distinctByCodeOrder(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codeOrder', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByCreateOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createOn');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByDateOnSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOnSale');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByIsSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSale');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByObs(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'obs', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByTotalWeightProducts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalWeightProducts');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByTotalWithDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalWithDiscount');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByTotalWithoutDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalWithoutDiscount');
    });
  }
}

extension OrderQueryProperty on QueryBuilder<Order, Order, QQueryProperty> {
  QueryBuilder<Order, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Order, Person?, QQueryOperations> clientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client');
    });
  }

  QueryBuilder<Order, String, QQueryOperations> codeOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codeOrder');
    });
  }

  QueryBuilder<Order, DateTime, QQueryOperations> createOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createOn');
    });
  }

  QueryBuilder<Order, DateTime, QQueryOperations> dateOnSaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOnSale');
    });
  }

  QueryBuilder<Order, int, QQueryOperations> discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<Order, bool, QQueryOperations> isSaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSale');
    });
  }

  QueryBuilder<Order, String, QQueryOperations> obsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'obs');
    });
  }

  QueryBuilder<Order, List<ProductOrder>?, QQueryOperations>
      productsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'products');
    });
  }

  QueryBuilder<Order, double, QQueryOperations> totalWeightProductsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalWeightProducts');
    });
  }

  QueryBuilder<Order, double, QQueryOperations> totalWithDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalWithDiscount');
    });
  }

  QueryBuilder<Order, double, QQueryOperations> totalWithoutDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalWithoutDiscount');
    });
  }
}
