// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
import 'dart:core';
import 'dart:async' as prefix10;
import 'package:dart_json_mapper/src/identifier_casing.dart' as prefix8;
import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:hive/hive.dart' as prefix9;
import 'package:scb_arch_demo/base/data/model/common/error_field.dart'
    as prefix6;
import 'package:scb_arch_demo/base/data/model/common/error_response.dart'
    as prefix5;
import 'package:scb_arch_demo/features/authentication/data/models/force_update_model.dart'
    as prefix1;
import 'package:scb_arch_demo/features/authentication/data/models/token_model.dart'
    as prefix2;
import 'package:scb_arch_demo/features/authentication/data/models/user_model.dart'
    as prefix3;
import 'package:scb_arch_demo/features/authentication/domain/entities/force_update_status.dart'
    as prefix7;
import 'package:scb_arch_demo/features/authentication/domain/entities/user.dart'
    as prefix4;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: unused_import

import 'package:reflectable/mirrors.dart' as m;
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.JsonSerializable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'ForceUpdateStatusModel',
            r'.ForceUpdateStatusModel',
            134217735,
            0,
            const prefix0.JsonSerializable(),
            const <int>[0, 23],
            const <int>[24, 25, 26, 27, 28, 21, 22],
            const <int>[],
            7,
            {},
            {},
            {
              r'': (bool b) => () => b ? prefix1.ForceUpdateStatusModel() : null
            },
            -1,
            0,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake,
                  ignoreNullMembers: true,
                  name: 'data')
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'TokenModel',
            r'.TokenModel',
            134217735,
            1,
            const prefix0.JsonSerializable(),
            const <int>[1, 2, 3, 35],
            const <int>[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34],
            const <int>[],
            8,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.TokenModel() : null},
            -1,
            1,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake,
                  ignoreNullMembers: true,
                  name: 'data')
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'UserModel',
            r'.UserModel',
            134217735,
            2,
            const prefix0.JsonSerializable(),
            const <int>[4, 5, 6, 7, 44, 45],
            const <int>[
              24,
              25,
              26,
              27,
              28,
              46,
              47,
              48,
              49,
              50,
              51,
              52,
              36,
              37,
              38,
              39,
              40,
              41,
              42,
              43
            ],
            const <int>[],
            9,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.UserModel() : null},
            -1,
            2,
            const <int>[],
            const <Object>[
              const prefix9.HiveType(typeId: 0),
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake,
                  ignoreNullMembers: true,
                  name: 'data')
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'User',
            r'.User',
            134217735,
            3,
            const prefix0.JsonSerializable(),
            const <int>[9, 10, 11, 12, 61],
            const <int>[24, 25, 26, 27, 28, 53, 54, 55, 56, 57, 58, 59, 60],
            const <int>[],
            10,
            {},
            {},
            {r'': (bool b) => () => b ? prefix4.User() : null},
            -1,
            3,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake,
                  ignoreNullMembers: true,
                  name: 'data')
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'ErrorResponse',
            r'.ErrorResponse',
            134217735,
            4,
            const prefix0.JsonSerializable(),
            const <int>[13, 14, 15, 16, 70],
            const <int>[24, 25, 26, 27, 28, 62, 63, 64, 65, 66, 67, 68, 69],
            const <int>[],
            11,
            {},
            {},
            {r'': (bool b) => () => b ? prefix5.ErrorResponse() : null},
            -1,
            4,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake, ignoreNullMembers: true)
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'ErrorField',
            r'.ErrorField',
            134217735,
            5,
            const prefix0.JsonSerializable(),
            const <int>[17, 18, 19, 77],
            const <int>[24, 25, 26, 27, 28, 71, 72, 73, 74, 75, 76],
            const <int>[],
            12,
            {},
            {},
            {r'': (bool b) => () => b ? prefix6.ErrorField() : null},
            -1,
            5,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake, ignoreNullMembers: true)
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'ForceUpdateStatus',
            r'.ForceUpdateStatus',
            134217735,
            6,
            const prefix0.JsonSerializable(),
            const <int>[20, 80],
            const <int>[24, 25, 26, 27, 28, 78, 79],
            const <int>[],
            13,
            {},
            {},
            {r'': (bool b) => () => b ? prefix7.ForceUpdateStatus() : null},
            -1,
            6,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(
                  caseStyle: prefix8.CaseStyle.snake,
                  ignoreNullMembers: true,
                  name: 'data')
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            7,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            8,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'.BaseHiveObject with .PrettyJsonMixin',
            r'..BaseHiveObject with .PrettyJsonMixin',
            134218311,
            9,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28, 46, 47, 48, 49, 50, 51, 52],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            10,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            11,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            12,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with .PrettyJsonMixin',
            r'.dart.core.Object with .PrettyJsonMixin',
            134218311,
            13,
            const prefix0.JsonSerializable(),
            const <int>[25],
            const <int>[24, 25, 26, 27, 28],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[],
            const [],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(
            r'forceUpdate',
            134348805,
            0,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14, const <int>[], const []),
        r.VariableMirrorImpl(
            r'accessToken',
            67239941,
            1,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const <Object>[
          const prefix0.JsonProperty(name: const ['access_token', 'token'])
        ]),
        r.VariableMirrorImpl(
            r'refreshToken',
            67239941,
            1,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const []),
        r.VariableMirrorImpl(
            r'expireIn',
            67239941,
            1,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16, const <int>[], const <Object>[
          const prefix0.JsonProperty(name: const ['expire_in', 'expires_in'])
        ]),
        r.VariableMirrorImpl(
            r'name',
            67239941,
            2,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const <Object>[const prefix9.HiveField(0)]),
        r.VariableMirrorImpl(
            r'email',
            67239941,
            2,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const <Object>[const prefix9.HiveField(1)]),
        r.VariableMirrorImpl(
            r'age',
            67239941,
            2,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16,
            const <int>[],
            const <Object>[const prefix9.HiveField(2)]),
        r.VariableMirrorImpl(
            r'friends',
            84017157,
            2,
            const prefix0.JsonSerializable(),
            -1,
            17,
            18,
            const <int>[19],
            const <Object>[const prefix9.HiveField(3)]),
        r.VariableMirrorImpl(
            r'id',
            67239941,
            -1,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16, const <int>[], const []),
        r.VariableMirrorImpl(
            r'name',
            134348805,
            3,
            const prefix0.JsonSerializable(),
            -1,
            19,
            19, const <int>[], const []),
        r.VariableMirrorImpl(
            r'email',
            134348805,
            3,
            const prefix0.JsonSerializable(),
            -1,
            19,
            19, const <int>[], const []),
        r.VariableMirrorImpl(
            r'age',
            67239941,
            3,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16, const <int>[], const []),
        r.VariableMirrorImpl(
            r'friends',
            151126021,
            3,
            const prefix0.JsonSerializable(),
            -1,
            20,
            21,
            const <int>[19],
            const []),
        r.VariableMirrorImpl(
            r'code',
            67239941,
            4,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const <Object>[const prefix0.JsonProperty(name: 'error/code')]),
        r.VariableMirrorImpl(
            r'title',
            67239941,
            4,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const <Object>[const prefix0.JsonProperty(name: 'error/title')]),
        r.VariableMirrorImpl(
            r'message',
            67239941,
            4,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const <Object>[
          const prefix0.JsonProperty(name: const ['error/message', 'message'])
        ]),
        r.VariableMirrorImpl(
            r'errors',
            84017157,
            4,
            const prefix0.JsonSerializable(),
            -1,
            22,
            23,
            const <int>[5],
            const <Object>[const prefix0.JsonProperty(name: 'error/errors')]),
        r.VariableMirrorImpl(
            r'code',
            67239941,
            5,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const []),
        r.VariableMirrorImpl(
            r'field',
            67239941,
            5,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const []),
        r.VariableMirrorImpl(
            r'message',
            67239941,
            5,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15, const <int>[], const []),
        r.VariableMirrorImpl(
            r'forceUpdate',
            134348805,
            6,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14, const <int>[], const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 21),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 0, 22),
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'==', 2097154, -1, -1, 14, 14, const <int>[],
            const <int>[1], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'toString',
            2097154,
            -1,
            -1,
            19,
            19,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            524290,
            -1,
            -1,
            -1,
            -1,
            const <int>[],
            const <int>[2],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'hashCode', 2097155, -1, -1, 24, 24, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'runtimeType',
            2097155,
            -1,
            -1,
            25,
            25,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 29),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 1, 30),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 31),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 2, 32),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 3, 33),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 3, 34),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 4, 36),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 4, 37),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 5, 38),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 5, 39),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 6, 40),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 6, 41),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 7, 42),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 7, 43),
        r.MethodMirrorImpl(
            r'box',
            35652099,
            2,
            -1,
            26,
            27,
            null,
            const <int>[],
            const prefix0.JsonSerializable(),
            const <Object>[override, const prefix0.JsonProperty(ignore: true)]),
        r.MethodMirrorImpl(r'', 64, 2, -1, 2, 2, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'save', 35651586, -1, -1, 28, 29, const <int>[-1],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'delete', 35651586, -1, -1, 28, 29, const <int>[-1],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'box', 35651587, -1, -1, 26, 27, null,
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'key', 524291, -1, -1, -1, -1, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'isInBox', 2097155, -1, -1, 14, 14, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 8, 51),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 8, 52),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 9, 53),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 9, 54),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 10, 55),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 10, 56),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 11, 57),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 11, 58),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 12, 59),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 12, 60),
        r.MethodMirrorImpl(r'', 64, 3, -1, 3, 3, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 13, 62),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 13, 63),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 14, 64),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 14, 65),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 15, 66),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 15, 67),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 16, 68),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 16, 69),
        r.MethodMirrorImpl(r'', 64, 4, -1, 4, 4, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 17, 71),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 17, 72),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 18, 73),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 18, 74),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 19, 75),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 19, 76),
        r.MethodMirrorImpl(r'', 64, 5, -1, 5, 5, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 20, 78),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 20, 79),
        r.MethodMirrorImpl(r'', 64, 6, -1, 6, 6, const <int>[], const <int>[],
            const prefix0.JsonSerializable(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'_forceUpdate',
            134348902,
            22,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            134348806,
            24,
            const prefix0.JsonSerializable(),
            -1,
            30,
            30,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            134348806,
            26,
            const prefix0.JsonSerializable(),
            -1,
            31,
            31,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_accessToken',
            67240038,
            30,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_refreshToken',
            67240038,
            32,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_expireIn',
            67240038,
            34,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            67240038,
            37,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_email',
            67240038,
            39,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_age',
            67240038,
            41,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_friends',
            84017254,
            43,
            const prefix0.JsonSerializable(),
            -1,
            17,
            18,
            const <int>[19],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_id',
            67240038,
            52,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            134348902,
            54,
            const prefix0.JsonSerializable(),
            -1,
            19,
            19,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_email',
            134348902,
            56,
            const prefix0.JsonSerializable(),
            -1,
            19,
            19,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_age',
            67240038,
            58,
            const prefix0.JsonSerializable(),
            -1,
            16,
            16,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_friends',
            151126118,
            60,
            const prefix0.JsonSerializable(),
            -1,
            20,
            21,
            const <int>[19],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_code',
            67240038,
            63,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_title',
            67240038,
            65,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_message',
            67240038,
            67,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_errors',
            84017254,
            69,
            const prefix0.JsonSerializable(),
            -1,
            22,
            23,
            const <int>[5],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_code',
            67240038,
            72,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_field',
            67240038,
            74,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_message',
            67240038,
            76,
            const prefix0.JsonSerializable(),
            -1,
            15,
            15,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_forceUpdate',
            134348902,
            79,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14,
            const <int>[],
            const [],
            null,
            null)
      ],
      <Type>[
        prefix1.ForceUpdateStatusModel,
        prefix2.TokenModel,
        prefix3.UserModel,
        prefix4.User,
        prefix5.ErrorResponse,
        prefix6.ErrorField,
        prefix7.ForceUpdateStatus,
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        const r.FakeType(r'..BaseHiveObject with .PrettyJsonMixin'),
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        const r.FakeType(r'.dart.core.Object with .PrettyJsonMixin'),
        bool,
        String,
        int,
        const m.TypeValue<List<String>>().type,
        List,
        String,
        const m.TypeValue<List<String>>().type,
        List,
        const m.TypeValue<List<prefix6.ErrorField>>().type,
        List,
        int,
        Type,
        const m.TypeValue<prefix9.BoxBase<dynamic>>().type,
        prefix9.BoxBase,
        const m.TypeValue<prefix10.Future<void>>().type,
        prefix10.Future,
        Object,
        Invocation
      ],
      14,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'forceUpdate': (dynamic instance) => instance.forceUpdate,
        r'accessToken': (dynamic instance) => instance.accessToken,
        r'refreshToken': (dynamic instance) => instance.refreshToken,
        r'expireIn': (dynamic instance) => instance.expireIn,
        r'save': (dynamic instance) => instance.save,
        r'delete': (dynamic instance) => instance.delete,
        r'box': (dynamic instance) => instance.box,
        r'key': (dynamic instance) => instance.key,
        r'isInBox': (dynamic instance) => instance.isInBox,
        r'id': (dynamic instance) => instance.id,
        r'name': (dynamic instance) => instance.name,
        r'email': (dynamic instance) => instance.email,
        r'age': (dynamic instance) => instance.age,
        r'friends': (dynamic instance) => instance.friends,
        r'code': (dynamic instance) => instance.code,
        r'title': (dynamic instance) => instance.title,
        r'message': (dynamic instance) => instance.message,
        r'errors': (dynamic instance) => instance.errors,
        r'field': (dynamic instance) => instance.field
      },
      {
        r'forceUpdate=': (dynamic instance, value) =>
            instance.forceUpdate = value,
        r'accessToken=': (dynamic instance, value) =>
            instance.accessToken = value,
        r'refreshToken=': (dynamic instance, value) =>
            instance.refreshToken = value,
        r'expireIn=': (dynamic instance, value) => instance.expireIn = value,
        r'id=': (dynamic instance, value) => instance.id = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'email=': (dynamic instance, value) => instance.email = value,
        r'age=': (dynamic instance, value) => instance.age = value,
        r'friends=': (dynamic instance, value) => instance.friends = value,
        r'code=': (dynamic instance, value) => instance.code = value,
        r'title=': (dynamic instance, value) => instance.title = value,
        r'message=': (dynamic instance, value) => instance.message = value,
        r'errors=': (dynamic instance, value) => instance.errors = value,
        r'field=': (dynamic instance, value) => instance.field = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
