import 'package:bcrypt/bcrypt.dart';

/// Handles bcrypt hashing for profile/vault passwords (PIN, password, pattern).
///
/// bcrypt is used here rather than PBKDF2 because these are short credentials
/// entered per-interaction, not keys protecting the full database.
class PasswordHasher {
  static const int _workFactor = 12;

  /// Hashes any credential string. For patterns, the caller passes the
  /// dot-sequence string (e.g. '04781').
  static String hash(String credential) =>
      BCrypt.hashpw(credential, BCrypt.gensalt(logRounds: _workFactor));

  /// Returns true if [candidate] matches [storedHash].
  static bool verify(String candidate, String storedHash) =>
      BCrypt.checkpw(candidate, storedHash);
}

/// Converts a 3×3 unlock-pattern sequence to a canonical string.
///
/// Grid numbering:
///   0 1 2
///   3 4 5
///   6 7 8
///
/// [points] — list of tapped grid indices in order (min 4, max 9, no repeats).
class PatternConverter {
  static const int minLength = 4;

  /// Validates and converts [points] to a hashable string.
  /// Throws [ArgumentError] if the pattern is too short or has duplicates.
  static String toHashableString(List<int> points) {
    if (points.length < minLength) {
      throw ArgumentError('Pattern must have at least $minLength points');
    }
    if (points.toSet().length != points.length) {
      throw ArgumentError('Pattern must not repeat points');
    }
    if (points.any((p) => p < 0 || p > 8)) {
      throw ArgumentError('Pattern points must be 0–8');
    }
    return points.join();
  }
}
