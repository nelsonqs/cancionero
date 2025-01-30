// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_range_price.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductRangePriceCollection on Isar {
  IsarCollection<ProductRangePrice> get productRangePrices => this.collection();
}

const ProductRangePriceSchema = CollectionSchema(
  name: r'ProductRangePrice',
  id: 5332800210502974058,
  properties: {
    r'boxPrice': PropertySchema(
      id: 0,
      name: r'boxPrice',
      type: IsarType.double,
    ),
    r'discount': PropertySchema(
      id: 1,
      name: r'discount',
      type: IsarType.double,
    ),
    r'group': PropertySchema(
      id: 2,
      name: r'group',
      type: IsarType.long,
    ),
    r'itemId': PropertySchema(
      id: 3,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'price': PropertySchema(
      id: 4,
      name: r'price',
      type: IsarType.double,
    ),
    r'rangeA': PropertySchema(
      id: 5,
      name: r'rangeA',
      type: IsarType.long,
    ),
    r'rangeB': PropertySchema(
      id: 6,
      name: r'rangeB',
      type: IsarType.long,
    ),
    r'unitPrice': PropertySchema(
      id: 7,
      name: r'unitPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _productRangePriceEstimateSize,
  serialize: _productRangePriceSerialize,
  deserialize: _productRangePriceDeserialize,
  deserializeProp: _productRangePriceDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productRangePriceGetId,
  getLinks: _productRangePriceGetLinks,
  attach: _productRangePriceAttach,
  version: '3.1.0+1',
);

int _productRangePriceEstimateSize(
  ProductRangePrice object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _productRangePriceSerialize(
  ProductRangePrice object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.boxPrice);
  writer.writeDouble(offsets[1], object.discount);
  writer.writeLong(offsets[2], object.group);
  writer.writeLong(offsets[3], object.itemId);
  writer.writeDouble(offsets[4], object.price);
  writer.writeLong(offsets[5], object.rangeA);
  writer.writeLong(offsets[6], object.rangeB);
  writer.writeDouble(offsets[7], object.unitPrice);
}

ProductRangePrice _productRangePriceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductRangePrice();
  object.boxPrice = reader.readDouble(offsets[0]);
  object.discount = reader.readDouble(offsets[1]);
  object.group = reader.readLong(offsets[2]);
  object.id = id;
  object.itemId = reader.readLongOrNull(offsets[3]);
  object.price = reader.readDouble(offsets[4]);
  object.rangeA = reader.readLong(offsets[5]);
  object.rangeB = reader.readLong(offsets[6]);
  object.unitPrice = reader.readDouble(offsets[7]);
  return object;
}

P _productRangePriceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productRangePriceGetId(ProductRangePrice object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productRangePriceGetLinks(
    ProductRangePrice object) {
  return [];
}

void _productRangePriceAttach(
    IsarCollection<dynamic> col, Id id, ProductRangePrice object) {
  object.id = id;
}

extension ProductRangePriceQueryWhereSort
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QWhere> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductRangePriceQueryWhere
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QWhereClause> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterWhereClause>
      idBetween(
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

extension ProductRangePriceQueryFilter
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QFilterCondition> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      boxPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      boxPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boxPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      boxPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boxPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      boxPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boxPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      discountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      discountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      discountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      discountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      groupEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'group',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      groupGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'group',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      groupLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'group',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      groupBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'group',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      itemIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      priceEqualTo(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      priceGreaterThan(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      priceLessThan(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      priceBetween(
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

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeAEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rangeA',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeAGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rangeA',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeALessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rangeA',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeABetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rangeA',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeBEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rangeB',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeBGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rangeB',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeBLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rangeB',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      rangeBBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rangeB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      unitPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      unitPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      unitPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterFilterCondition>
      unitPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ProductRangePriceQueryObject
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QFilterCondition> {}

extension ProductRangePriceQueryLinks
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QFilterCondition> {}

extension ProductRangePriceQuerySortBy
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QSortBy> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByBoxPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByBoxPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxPrice', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByRangeA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeA', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByRangeADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeA', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByRangeB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeB', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByRangeBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeB', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      sortByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.desc);
    });
  }
}

extension ProductRangePriceQuerySortThenBy
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QSortThenBy> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByBoxPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByBoxPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxPrice', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'group', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByRangeA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeA', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByRangeADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeA', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByRangeB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeB', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByRangeBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangeB', Sort.desc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.asc);
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QAfterSortBy>
      thenByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.desc);
    });
  }
}

extension ProductRangePriceQueryWhereDistinct
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct> {
  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByBoxPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boxPrice');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'group');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemId');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByRangeA() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rangeA');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByRangeB() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rangeB');
    });
  }

  QueryBuilder<ProductRangePrice, ProductRangePrice, QDistinct>
      distinctByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitPrice');
    });
  }
}

extension ProductRangePriceQueryProperty
    on QueryBuilder<ProductRangePrice, ProductRangePrice, QQueryProperty> {
  QueryBuilder<ProductRangePrice, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductRangePrice, double, QQueryOperations> boxPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boxPrice');
    });
  }

  QueryBuilder<ProductRangePrice, double, QQueryOperations> discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<ProductRangePrice, int, QQueryOperations> groupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'group');
    });
  }

  QueryBuilder<ProductRangePrice, int?, QQueryOperations> itemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemId');
    });
  }

  QueryBuilder<ProductRangePrice, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<ProductRangePrice, int, QQueryOperations> rangeAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rangeA');
    });
  }

  QueryBuilder<ProductRangePrice, int, QQueryOperations> rangeBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rangeB');
    });
  }

  QueryBuilder<ProductRangePrice, double, QQueryOperations>
      unitPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitPrice');
    });
  }
}
