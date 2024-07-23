// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

/// Properties of a camera device.
@immutable
class FrameRateRange {
  /// Creates a new camera description with the given properties.
  const FrameRateRange({
    required this.min,
    required this.max,
  });

  /// The minimum frame rate.
  /// The value is in frames per second.
  /// The value is always greater than or equal to zero.
  /// The value is always less than or equal to [max].
  final double min;

  /// The maximum frame rate.
  /// The value is in frames per second.
  /// The value is always greater than or equal to zero.
  /// The value is always greater than or equal to [min].
  final double max;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FrameRateRange &&
          runtimeType == other.runtimeType &&
          min == other.min &&
          max == other.max;

  @override
  int get hashCode => Object.hash(min, max);

  @override
  String toString() {
    return '${objectRuntimeType(this, 'FrameRateRange')}('
        '$min, $max)';
  }
}
