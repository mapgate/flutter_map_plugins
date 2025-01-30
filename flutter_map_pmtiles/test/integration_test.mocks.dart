// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_map_pmtiles/test/integration_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;
import 'dart:convert' as _i4;

import 'package:latlong2/latlong.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pmtiles/src/archive.dart' as _i7;
import 'package:pmtiles/src/directory.dart' as _i3;
import 'package:pmtiles/src/header.dart' as _i2;
import 'package:pmtiles/src/tile.dart' as _i6;
import 'package:pmtiles/src/types.dart' as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeHeader_0 extends _i1.SmartFake implements _i2.Header {
  _FakeHeader_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDirectory_1 extends _i1.SmartFake implements _i3.Directory {
  _FakeDirectory_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConverter_2<S, T> extends _i1.SmartFake
    implements _i4.Converter<S, T> {
  _FakeConverter_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLatLng_3 extends _i1.SmartFake implements _i5.LatLng {
  _FakeLatLng_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTile_4 extends _i1.SmartFake implements _i6.Tile {
  _FakeTile_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PmTilesArchive].
///
/// See the documentation for Mockito's code generation for more information.
class MockPmTilesArchive extends _i1.Mock implements _i7.PmTilesArchive {
  @override
  _i2.Header get header => (super.noSuchMethod(
        Invocation.getter(#header),
        returnValue: _FakeHeader_0(
          this,
          Invocation.getter(#header),
        ),
        returnValueForMissingStub: _FakeHeader_0(
          this,
          Invocation.getter(#header),
        ),
      ) as _i2.Header);

  @override
  set header(_i2.Header? _header) => super.noSuchMethod(
        Invocation.setter(
          #header,
          _header,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.Directory get root => (super.noSuchMethod(
        Invocation.getter(#root),
        returnValue: _FakeDirectory_1(
          this,
          Invocation.getter(#root),
        ),
        returnValueForMissingStub: _FakeDirectory_1(
          this,
          Invocation.getter(#root),
        ),
      ) as _i3.Directory);

  @override
  set root(_i3.Directory? _root) => super.noSuchMethod(
        Invocation.setter(
          #root,
          _root,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Converter<List<int>, List<int>> get tileDecoder => (super.noSuchMethod(
        Invocation.getter(#tileDecoder),
        returnValue: _FakeConverter_2<List<int>, List<int>>(
          this,
          Invocation.getter(#tileDecoder),
        ),
        returnValueForMissingStub: _FakeConverter_2<List<int>, List<int>>(
          this,
          Invocation.getter(#tileDecoder),
        ),
      ) as _i4.Converter<List<int>, List<int>>);

  @override
  _i8.Future<Object?> get metadata => (super.noSuchMethod(
        Invocation.getter(#metadata),
        returnValue: _i8.Future<Object?>.value(),
        returnValueForMissingStub: _i8.Future<Object?>.value(),
      ) as _i8.Future<Object?>);

  @override
  int get version => (super.noSuchMethod(
        Invocation.getter(#version),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i9.Compression get tileCompression => (super.noSuchMethod(
        Invocation.getter(#tileCompression),
        returnValue: _i9.Compression.unknown,
        returnValueForMissingStub: _i9.Compression.unknown,
      ) as _i9.Compression);

  @override
  _i9.TileType get tileType => (super.noSuchMethod(
        Invocation.getter(#tileType),
        returnValue: _i9.TileType.unknown,
        returnValueForMissingStub: _i9.TileType.unknown,
      ) as _i9.TileType);

  @override
  int get minZoom => (super.noSuchMethod(
        Invocation.getter(#minZoom),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  int get maxZoom => (super.noSuchMethod(
        Invocation.getter(#maxZoom),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i5.LatLng get minPosition => (super.noSuchMethod(
        Invocation.getter(#minPosition),
        returnValue: _FakeLatLng_3(
          this,
          Invocation.getter(#minPosition),
        ),
        returnValueForMissingStub: _FakeLatLng_3(
          this,
          Invocation.getter(#minPosition),
        ),
      ) as _i5.LatLng);

  @override
  _i5.LatLng get maxPosition => (super.noSuchMethod(
        Invocation.getter(#maxPosition),
        returnValue: _FakeLatLng_3(
          this,
          Invocation.getter(#maxPosition),
        ),
        returnValueForMissingStub: _FakeLatLng_3(
          this,
          Invocation.getter(#maxPosition),
        ),
      ) as _i5.LatLng);

  @override
  int get centerZoom => (super.noSuchMethod(
        Invocation.getter(#centerZoom),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i5.LatLng get centerPosition => (super.noSuchMethod(
        Invocation.getter(#centerPosition),
        returnValue: _FakeLatLng_3(
          this,
          Invocation.getter(#centerPosition),
        ),
        returnValueForMissingStub: _FakeLatLng_3(
          this,
          Invocation.getter(#centerPosition),
        ),
      ) as _i5.LatLng);

  @override
  _i8.Future<_i3.Entry?> lookup(int? tileId) => (super.noSuchMethod(
        Invocation.method(
          #lookup,
          [tileId],
        ),
        returnValue: _i8.Future<_i3.Entry?>.value(),
        returnValueForMissingStub: _i8.Future<_i3.Entry?>.value(),
      ) as _i8.Future<_i3.Entry?>);

  @override
  _i8.Future<_i6.Tile> tile(int? tileId) => (super.noSuchMethod(
        Invocation.method(
          #tile,
          [tileId],
        ),
        returnValue: _i8.Future<_i6.Tile>.value(_FakeTile_4(
          this,
          Invocation.method(
            #tile,
            [tileId],
          ),
        )),
        returnValueForMissingStub: _i8.Future<_i6.Tile>.value(_FakeTile_4(
          this,
          Invocation.method(
            #tile,
            [tileId],
          ),
        )),
      ) as _i8.Future<_i6.Tile>);

  @override
  _i8.Stream<_i6.Tile> tiles(List<int>? tileIds) => (super.noSuchMethod(
        Invocation.method(
          #tiles,
          [tileIds],
        ),
        returnValue: _i8.Stream<_i6.Tile>.empty(),
        returnValueForMissingStub: _i8.Stream<_i6.Tile>.empty(),
      ) as _i8.Stream<_i6.Tile>);

  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}
