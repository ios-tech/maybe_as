library maybe_as;

extension MaybeAsObject on Object {
  /// returns null if object not same type of [T] else return current instance
  T? maybeAs<T>() {
    if (this is T) return this as T;
    return null;
  }

  /// returns [defaultValue] if object not same type of [T] else return current instance
  T maybeAsOr<T>(T defaultValue) {
    return maybeAs<T>() ?? defaultValue;
  }
}
