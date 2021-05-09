// CLLocationArrayExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(CoreLocation)
import CoreLocation
public extension Array where Element: CLLocation {
    /// SwifterSwift: Calculates the sum of distances between each location in the array based on the curvature of the earth.
    ///
    /// - Parameter unit: The unit of length to return the distance in.
    /// - Returns: The distance in the specified unit.
    @available(tvOS 10.0, macOS 10.12, watchOS 3.0, *)
    func distance(unitLength unit: UnitLength) -> Measurement<UnitLength> {
        guard count > 1 else {
            return Measurement(value: 0.0, unit: unit)
        }
        var distance: CLLocationDistance = 0.0
        for idx in 0..<count - 1 {
            distance += self[idx].distance(from: self[idx + 1])
        }
        return Measurement(value: distance, unit: UnitLength.meters).converted(to: unit)
    }
}
#endif
