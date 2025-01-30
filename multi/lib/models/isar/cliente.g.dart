// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClienteCollection on Isar {
  IsarCollection<Cliente> get clientes => this.collection();
}

const ClienteSchema = CollectionSchema(
  name: r'Cliente',
  id: 8668185751114761648,
  properties: {
    r'celular': PropertySchema(
      id: 0,
      name: r'celular',
      type: IsarType.string,
    ),
    r'codigo': PropertySchema(
      id: 1,
      name: r'codigo',
      type: IsarType.string,
    ),
    r'direccion': PropertySchema(
      id: 2,
      name: r'direccion',
      type: IsarType.string,
    ),
    r'nitCliente': PropertySchema(
      id: 3,
      name: r'nitCliente',
      type: IsarType.string,
    ),
    r'nombreCliente': PropertySchema(
      id: 4,
      name: r'nombreCliente',
      type: IsarType.string,
    ),
    r'nombreContacto': PropertySchema(
      id: 5,
      name: r'nombreContacto',
      type: IsarType.string,
    ),
    r'nombreFactura': PropertySchema(
      id: 6,
      name: r'nombreFactura',
      type: IsarType.string,
    )
  },
  estimateSize: _clienteEstimateSize,
  serialize: _clienteSerialize,
  deserialize: _clienteDeserialize,
  deserializeProp: _clienteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _clienteGetId,
  getLinks: _clienteGetLinks,
  attach: _clienteAttach,
  version: '3.1.0+1',
);

int _clienteEstimateSize(
  Cliente object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.celular.length * 3;
  bytesCount += 3 + object.codigo.length * 3;
  bytesCount += 3 + object.direccion.length * 3;
  bytesCount += 3 + object.nitCliente.length * 3;
  bytesCount += 3 + object.nombreCliente.length * 3;
  bytesCount += 3 + object.nombreContacto.length * 3;
  bytesCount += 3 + object.nombreFactura.length * 3;
  return bytesCount;
}

void _clienteSerialize(
  Cliente object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.celular);
  writer.writeString(offsets[1], object.codigo);
  writer.writeString(offsets[2], object.direccion);
  writer.writeString(offsets[3], object.nitCliente);
  writer.writeString(offsets[4], object.nombreCliente);
  writer.writeString(offsets[5], object.nombreContacto);
  writer.writeString(offsets[6], object.nombreFactura);
}

Cliente _clienteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cliente();
  object.celular = reader.readString(offsets[0]);
  object.codigo = reader.readString(offsets[1]);
  object.direccion = reader.readString(offsets[2]);
  object.id = id;
  object.nitCliente = reader.readString(offsets[3]);
  object.nombreCliente = reader.readString(offsets[4]);
  object.nombreContacto = reader.readString(offsets[5]);
  object.nombreFactura = reader.readString(offsets[6]);
  return object;
}

P _clienteDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clienteGetId(Cliente object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _clienteGetLinks(Cliente object) {
  return [];
}

void _clienteAttach(IsarCollection<dynamic> col, Id id, Cliente object) {
  object.id = id;
}

extension ClienteQueryWhereSort on QueryBuilder<Cliente, Cliente, QWhere> {
  QueryBuilder<Cliente, Cliente, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClienteQueryWhere on QueryBuilder<Cliente, Cliente, QWhereClause> {
  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idBetween(
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

extension ClienteQueryFilter
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {
  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'celular',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'celular',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'celular',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'celular',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> celularIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'celular',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'codigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'direccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'direccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'direccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'direccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> direccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'direccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nitCliente',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nitCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nitCliente',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nitCliente',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nitClienteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nitCliente',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreClienteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreCliente',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreCliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreCliente',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreClienteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreCliente',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreClienteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreCliente',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreContactoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreContacto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreContactoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreContactoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreContacto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreContactoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreContacto',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreContactoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreContacto',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreFacturaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreFactura',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreFactura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreFactura',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> nombreFacturaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreFactura',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      nombreFacturaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreFactura',
        value: '',
      ));
    });
  }
}

extension ClienteQueryObject
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {}

extension ClienteQueryLinks
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {}

extension ClienteQuerySortBy on QueryBuilder<Cliente, Cliente, QSortBy> {
  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCelular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'celular', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCelularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'celular', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByDireccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'direccion', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByDireccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'direccion', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNitCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nitCliente', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNitClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nitCliente', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreCliente', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreCliente', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreContacto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreContacto', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreContactoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreContacto', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreFactura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreFactura', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByNombreFacturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreFactura', Sort.desc);
    });
  }
}

extension ClienteQuerySortThenBy
    on QueryBuilder<Cliente, Cliente, QSortThenBy> {
  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCelular() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'celular', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCelularDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'celular', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByDireccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'direccion', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByDireccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'direccion', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNitCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nitCliente', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNitClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nitCliente', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreCliente', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreCliente', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreContacto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreContacto', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreContactoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreContacto', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreFactura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreFactura', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByNombreFacturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreFactura', Sort.desc);
    });
  }
}

extension ClienteQueryWhereDistinct
    on QueryBuilder<Cliente, Cliente, QDistinct> {
  QueryBuilder<Cliente, Cliente, QDistinct> distinctByCelular(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'celular', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByCodigo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByDireccion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'direccion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByNitCliente(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nitCliente', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByNombreCliente(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreCliente',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByNombreContacto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreContacto',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByNombreFactura(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreFactura',
          caseSensitive: caseSensitive);
    });
  }
}

extension ClienteQueryProperty
    on QueryBuilder<Cliente, Cliente, QQueryProperty> {
  QueryBuilder<Cliente, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> celularProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'celular');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> codigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codigo');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> direccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'direccion');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> nitClienteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nitCliente');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> nombreClienteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreCliente');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> nombreContactoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreContacto');
    });
  }

  QueryBuilder<Cliente, String, QQueryOperations> nombreFacturaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreFactura');
    });
  }
}
