// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Show extends DataClass implements Insertable<Show> {
  final int id;
  final String name;
  final int? season;
  final int? episode;
  final String? type;
  final DateTime? releaseDate;
  final bool completed;
  final bool? binge;
  final String? onBreak;
  Show(
      {required this.id,
      required this.name,
      this.season,
      this.episode,
      this.type,
      this.releaseDate,
      required this.completed,
      this.binge,
      this.onBreak});
  factory Show.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Show(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      season: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}season']),
      episode: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}episode']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      releaseDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}release_date']),
      completed: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed'])!,
      binge: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}binge']),
      onBreak: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}on_break']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || season != null) {
      map['season'] = Variable<int?>(season);
    }
    if (!nullToAbsent || episode != null) {
      map['episode'] = Variable<int?>(episode);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || releaseDate != null) {
      map['release_date'] = Variable<DateTime?>(releaseDate);
    }
    map['completed'] = Variable<bool>(completed);
    if (!nullToAbsent || binge != null) {
      map['binge'] = Variable<bool?>(binge);
    }
    if (!nullToAbsent || onBreak != null) {
      map['on_break'] = Variable<String?>(onBreak);
    }
    return map;
  }

  ShowsCompanion toCompanion(bool nullToAbsent) {
    return ShowsCompanion(
      id: Value(id),
      name: Value(name),
      season:
          season == null && nullToAbsent ? const Value.absent() : Value(season),
      episode: episode == null && nullToAbsent
          ? const Value.absent()
          : Value(episode),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      releaseDate: releaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(releaseDate),
      completed: Value(completed),
      binge:
          binge == null && nullToAbsent ? const Value.absent() : Value(binge),
      onBreak: onBreak == null && nullToAbsent
          ? const Value.absent()
          : Value(onBreak),
    );
  }

  factory Show.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Show(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      season: serializer.fromJson<int?>(json['season']),
      episode: serializer.fromJson<int?>(json['episode']),
      type: serializer.fromJson<String?>(json['type']),
      releaseDate: serializer.fromJson<DateTime?>(json['releaseDate']),
      completed: serializer.fromJson<bool>(json['completed']),
      binge: serializer.fromJson<bool?>(json['binge']),
      onBreak: serializer.fromJson<String?>(json['onBreak']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'season': serializer.toJson<int?>(season),
      'episode': serializer.toJson<int?>(episode),
      'type': serializer.toJson<String?>(type),
      'releaseDate': serializer.toJson<DateTime?>(releaseDate),
      'completed': serializer.toJson<bool>(completed),
      'binge': serializer.toJson<bool?>(binge),
      'onBreak': serializer.toJson<String?>(onBreak),
    };
  }

  Show copyWith(
          {int? id,
          String? name,
          int? season,
          int? episode,
          String? type,
          DateTime? releaseDate,
          bool? completed,
          bool? binge,
          String? onBreak}) =>
      Show(
        id: id ?? this.id,
        name: name ?? this.name,
        season: season ?? this.season,
        episode: episode ?? this.episode,
        type: type ?? this.type,
        releaseDate: releaseDate ?? this.releaseDate,
        completed: completed ?? this.completed,
        binge: binge ?? this.binge,
        onBreak: onBreak ?? this.onBreak,
      );
  @override
  String toString() {
    return (StringBuffer('Show(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('season: $season, ')
          ..write('episode: $episode, ')
          ..write('type: $type, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('completed: $completed, ')
          ..write('binge: $binge, ')
          ..write('onBreak: $onBreak')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              season.hashCode,
              $mrjc(
                  episode.hashCode,
                  $mrjc(
                      type.hashCode,
                      $mrjc(
                          releaseDate.hashCode,
                          $mrjc(completed.hashCode,
                              $mrjc(binge.hashCode, onBreak.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Show &&
          other.id == this.id &&
          other.name == this.name &&
          other.season == this.season &&
          other.episode == this.episode &&
          other.type == this.type &&
          other.releaseDate == this.releaseDate &&
          other.completed == this.completed &&
          other.binge == this.binge &&
          other.onBreak == this.onBreak);
}

class ShowsCompanion extends UpdateCompanion<Show> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> season;
  final Value<int?> episode;
  final Value<String?> type;
  final Value<DateTime?> releaseDate;
  final Value<bool> completed;
  final Value<bool?> binge;
  final Value<String?> onBreak;
  const ShowsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.season = const Value.absent(),
    this.episode = const Value.absent(),
    this.type = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.completed = const Value.absent(),
    this.binge = const Value.absent(),
    this.onBreak = const Value.absent(),
  });
  ShowsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.season = const Value.absent(),
    this.episode = const Value.absent(),
    this.type = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.completed = const Value.absent(),
    this.binge = const Value.absent(),
    this.onBreak = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Show> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int?>? season,
    Expression<int?>? episode,
    Expression<String?>? type,
    Expression<DateTime?>? releaseDate,
    Expression<bool>? completed,
    Expression<bool?>? binge,
    Expression<String?>? onBreak,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (season != null) 'season': season,
      if (episode != null) 'episode': episode,
      if (type != null) 'type': type,
      if (releaseDate != null) 'release_date': releaseDate,
      if (completed != null) 'completed': completed,
      if (binge != null) 'binge': binge,
      if (onBreak != null) 'on_break': onBreak,
    });
  }

  ShowsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int?>? season,
      Value<int?>? episode,
      Value<String?>? type,
      Value<DateTime?>? releaseDate,
      Value<bool>? completed,
      Value<bool?>? binge,
      Value<String?>? onBreak}) {
    return ShowsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      season: season ?? this.season,
      episode: episode ?? this.episode,
      type: type ?? this.type,
      releaseDate: releaseDate ?? this.releaseDate,
      completed: completed ?? this.completed,
      binge: binge ?? this.binge,
      onBreak: onBreak ?? this.onBreak,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (season.present) {
      map['season'] = Variable<int?>(season.value);
    }
    if (episode.present) {
      map['episode'] = Variable<int?>(episode.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<DateTime?>(releaseDate.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (binge.present) {
      map['binge'] = Variable<bool?>(binge.value);
    }
    if (onBreak.present) {
      map['on_break'] = Variable<String?>(onBreak.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShowsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('season: $season, ')
          ..write('episode: $episode, ')
          ..write('type: $type, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('completed: $completed, ')
          ..write('binge: $binge, ')
          ..write('onBreak: $onBreak')
          ..write(')'))
        .toString();
  }
}

class $ShowsTable extends Shows with TableInfo<$ShowsTable, Show> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ShowsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _seasonMeta = const VerificationMeta('season');
  late final GeneratedColumn<int?> season = GeneratedColumn<int?>(
      'season', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _episodeMeta = const VerificationMeta('episode');
  late final GeneratedColumn<int?> episode = GeneratedColumn<int?>(
      'episode', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: false);
  final VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  late final GeneratedColumn<DateTime?> releaseDate =
      GeneratedColumn<DateTime?>('release_date', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  late final GeneratedColumn<bool?> completed = GeneratedColumn<bool?>(
      'completed', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (completed IN (0, 1))',
      defaultValue: Constant(false));
  final VerificationMeta _bingeMeta = const VerificationMeta('binge');
  late final GeneratedColumn<bool?> binge = GeneratedColumn<bool?>(
      'binge', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (binge IN (0, 1))',
      defaultValue: Constant(false));
  final VerificationMeta _onBreakMeta = const VerificationMeta('onBreak');
  late final GeneratedColumn<String?> onBreak = GeneratedColumn<String?>(
      'on_break', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      typeName: 'TEXT',
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, season, episode, type, releaseDate, completed, binge, onBreak];
  @override
  String get aliasedName => _alias ?? 'shows';
  @override
  String get actualTableName => 'shows';
  @override
  VerificationContext validateIntegrity(Insertable<Show> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('season')) {
      context.handle(_seasonMeta,
          season.isAcceptableOrUnknown(data['season']!, _seasonMeta));
    }
    if (data.containsKey('episode')) {
      context.handle(_episodeMeta,
          episode.isAcceptableOrUnknown(data['episode']!, _episodeMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    if (data.containsKey('binge')) {
      context.handle(
          _bingeMeta, binge.isAcceptableOrUnknown(data['binge']!, _bingeMeta));
    }
    if (data.containsKey('on_break')) {
      context.handle(_onBreakMeta,
          onBreak.isAcceptableOrUnknown(data['on_break']!, _onBreakMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Show map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Show.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ShowsTable createAlias(String alias) {
    return $ShowsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ShowsTable shows = $ShowsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [shows];
}
