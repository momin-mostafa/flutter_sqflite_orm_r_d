import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'model.g.dart';

const SqfEntityTable tableTodo = SqfEntityTable(
  tableName: 'todos',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: false,
  fields: [
    SqfEntityField('title', DbType.text, defaultValue: ''),
    SqfEntityField('is_completed', DbType.bool, defaultValue: false),
  ],
);

const seqIdentity = SqfEntitySequence(sequenceName: 'identity');

@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
  modelName: 'myDatabaseModel',
  databaseName: 'myDb.db',
  sequences: [seqIdentity],
  databaseTables: [tableTodo],
);
