// Copyright (c) 2021, Sudipto Chandra
// All rights reserved. Check LICENSE file for details.

import 'package:algorithmic/algorithmic.dart';
import 'package:test/test.dart';
import 'package:trotter/trotter.dart';

void main() {
  group("restrictedEditDistanceOf()", () {
    test("empty strings", () {
      final s = characters("");
      final t = characters("");
      expect(restrictedEditDistanceOf(s, t), 0);
    });
    test("abcd -> empty string", () {
      final s = characters("abcd");
      final t = characters("");
      expect(restrictedEditDistanceOf(s, t), 4);
    });
    test("empty string -> abcd", () {
      final s = characters("");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t), 4);
    });
    test("a -> a", () {
      final s = characters("a");
      final t = characters("a");
      expect(restrictedEditDistanceOf(s, t), 0);
    });
    test("a -> b", () {
      final s = characters("a");
      final t = characters("b");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("a -> ab", () {
      final s = characters("a");
      final t = characters("ab");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("ab -> ba", () {
      final s = characters("ab");
      final t = characters("ba");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("ac -> abc", () {
      final s = characters("ac");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("ca -> abc", () {
      final s = characters("ca");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t), 3);
    });
    test("abcd -> abcd", () {
      final s = characters("abcd");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t), 0);
    });
    test("abcd -> abc", () {
      final s = characters("abcd");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("abcd -> abd", () {
      final s = characters("abcd");
      final t = characters("abd");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("abcd -> abed", () {
      final s = characters("abcd");
      final t = characters("abed");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("abcd -> bcd", () {
      final s = characters("abcd");
      final t = characters("bcd");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("abcd -> bed", () {
      final s = characters("abcd");
      final t = characters("bed");
      expect(restrictedEditDistanceOf(s, t), 2);
    });
    test("abc -> abcd", () {
      final s = characters("abc");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("abd -> abcd", () {
      final s = characters("abd");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t), 1);
    });
    test("bed -> abcd", () {
      final s = characters("bed");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t), 2);
    });
    test("sunday -> saturday", () {
      final s = characters("sunday");
      final t = characters("saturday");
      expect(restrictedEditDistanceOf(s, t), 3);
    });
  });

  group("restrictedEditDistanceOf() with custom test", () {
    test("empty strings", () {
      final s = characters("");
      final t = characters("");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 0);
    });
    test("abcd -> empty string", () {
      final s = characters("abcd");
      final t = characters("");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 4);
    });
    test("empty string -> abcd", () {
      final s = characters("");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 4);
    });
    test("a -> a", () {
      final s = characters("a");
      final t = characters("a");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 0);
    });
    test("a -> b", () {
      final s = characters("a");
      final t = characters("b");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("a -> ab", () {
      final s = characters("a");
      final t = characters("ab");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("ab -> ba", () {
      final s = characters("ab");
      final t = characters("ba");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("ac -> abc", () {
      final s = characters("ac");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("ca -> abc", () {
      final s = characters("ca");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 3);
    });
    test("abcd -> abcd", () {
      final s = characters("abcd");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 0);
    });
    test("abcd -> abc", () {
      final s = characters("abcd");
      final t = characters("abc");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("abcd -> abd", () {
      final s = characters("abcd");
      final t = characters("abd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("abcd -> abed", () {
      final s = characters("abcd");
      final t = characters("abed");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("abcd -> bcd", () {
      final s = characters("abcd");
      final t = characters("bcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("abcd -> bed", () {
      final s = characters("abcd");
      final t = characters("bed");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 2);
    });
    test("abc -> abcd", () {
      final s = characters("abc");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("abd -> abcd", () {
      final s = characters("abd");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 1);
    });
    test("bed -> abcd", () {
      final s = characters("bed");
      final t = characters("abcd");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 2);
    });
    test("sunday -> saturday", () {
      final s = characters("sunday");
      final t = characters("saturday");
      expect(restrictedEditDistanceOf(s, t, test: (a, b) => a == b), 3);
    });
  });

  group("restrictedEditDistance()", () {
    test("empty strings", () {
      final s = "";
      final t = "";
      expect(restrictedEditDistance(s, t), 0);
    });
    test("abcd -> empty string", () {
      final s = "abcd";
      final t = "";
      expect(restrictedEditDistance(s, t), 4);
    });
    test("empty string -> abcd", () {
      final s = "";
      final t = "abcd";
      expect(restrictedEditDistance(s, t), 4);
    });
    test("a -> a", () {
      final s = "a";
      final t = "a";
      expect(restrictedEditDistance(s, t), 0);
    });
    test("a -> b", () {
      final s = "a";
      final t = "b";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("a -> ab", () {
      final s = "a";
      final t = "ab";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("ab -> ba", () {
      final s = "ab";
      final t = "ba";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("ac -> abc", () {
      final s = "ac";
      final t = "abc";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("ca -> abc", () {
      final s = "ca";
      final t = "abc";
      expect(restrictedEditDistance(s, t), 3);
    });
    test("abcd -> abcd", () {
      final s = "abcd";
      final t = "abcd";
      expect(restrictedEditDistance(s, t), 0);
    });

    test("abcd -> abc", () {
      final s = "abcd";
      final t = "abc";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("abcd -> abd", () {
      final s = "abcd";
      final t = "abd";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("abcd -> abed", () {
      final s = "abcd";
      final t = "abed";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("abcd -> bcd", () {
      final s = "abcd";
      final t = "bcd";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("abcd -> bed", () {
      final s = "abcd";
      final t = "bed";
      expect(restrictedEditDistance(s, t), 2);
    });
    test("abc -> abcd", () {
      final s = "abc";
      final t = "abcd";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("abd -> abcd", () {
      final s = "abd";
      final t = "abcd";
      expect(restrictedEditDistance(s, t), 1);
    });
    test("bed -> abcd", () {
      final s = "bed";
      final t = "abcd";
      expect(restrictedEditDistance(s, t), 2);
    });
    test("sunday -> saturday", () {
      final s = "sunday";
      final t = "saturday";
      expect(restrictedEditDistance(s, t), 3);
    });
    test("ABCD -> abcd | ignoreCase", () {
      final s = "ABCD";
      final t = "abcd";
      expect(restrictedEditDistance(s, t, ignoreCase: true), 0);
    });
    test("'ab c\\nd' -> 'a\\tbc d' | ignoreWhitespace", () {
      final s = "ab c\nd";
      final t = "a\tbc d";
      expect(restrictedEditDistance(s, t, ignoreWhitespace: true), 0);
    });
    test("'ab c. d' -> 'abc .d' | ignoreWhitespace", () {
      final s = "ab c. d";
      final t = "abc .d";
      expect(restrictedEditDistance(s, t, ignoreWhitespace: true), 0);
    });
    test("'ab12cd' -> 'abc6d' | ignoreNumeric", () {
      final s = "ab12cd";
      final t = "abc6d";
      expect(restrictedEditDistance(s, t, ignoreNumbers: true), 0);
    });
    test("'ab c..d' -> 'abc-d' | alphaNumericOnly", () {
      final s = "ab c..d";
      final t = "abc-d";
      expect(restrictedEditDistance(s, t, alphaNumericOnly: true), 0);
    });
    test("'ab c.2.d' -> 'abc1-d' | alphaNumericOnly + ignoreNumeric", () {
      final s = "ab c.2.d";
      final t = "abc1-d";
      expect(
          restrictedEditDistance(s, t,
              alphaNumericOnly: true, ignoreNumbers: true),
          0);
    });
  });
}
