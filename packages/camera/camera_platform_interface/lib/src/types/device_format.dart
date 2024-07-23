// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/foundation.dart';

import 'frame_rate_range.dart';

/// Properties of a device format.
@immutable
class DeviceFormat {
  /// Creates a new device format with the given properties.
  const DeviceFormat({
    required this.dimensions,
    required this.frameRateRanges,
    required this.mediaType,
    required this.mediaSubType,
    required this.hdr,
  });

  /// The dimensions of the device format.
  /// The value is in pixels.
  final Point<int> dimensions;

  /// The frame rate ranges of the device format that are supported.
  final List<FrameRateRange> frameRateRanges;

  /// The media type of the device format.
  final String mediaType;

  /// The media sub type of the device format.
  final String mediaSubType;

  /// Indicates whether the device format supports high dynamic range.
  final bool hdr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceFormat &&
          runtimeType == other.runtimeType &&
          dimensions == other.dimensions &&
          frameRateRanges == other.frameRateRanges &&
          mediaType == other.mediaType &&
          mediaSubType == other.mediaSubType &&
          hdr == other.hdr;

  @override
  int get hashCode =>
      Object.hash(dimensions, frameRateRanges, mediaType, mediaSubType, hdr);

  @override
  String toString() {
    return '${objectRuntimeType(this, 'DeviceFormat')}('
        '$dimensions, $frameRateRanges, $mediaType, $mediaSubType, $hdr)';
  }
}
