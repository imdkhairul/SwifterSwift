// BoolExtensions.swift - Copyright 2021 SwifterSwift

public extension Bool {
    /// SwifterSwift: Return 1 if true, or 0 if false.
    ///
    ///        false.int -> 0
    ///        true.int -> 1
    ///
    var int: Int {
        return self ? 1 : 0
    }
}

public extension Bool {
    /// SwifterSwift: Return "true" if true, or "false" if false.
    ///
    ///        false.string -> "false"
    ///        true.string -> "true"
    ///
    var string: String {
        return self ? "true" : "false"
    }
}
