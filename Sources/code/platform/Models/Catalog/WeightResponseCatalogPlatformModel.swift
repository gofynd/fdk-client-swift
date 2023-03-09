

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: WeightResponse
         Used By: Catalog
     */

    class WeightResponse: Codable {
        public var shipping: Double

        public var isDefault: Bool

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case shipping

            case isDefault = "is_default"

            case unit
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.shipping = shipping

            self.isDefault = isDefault

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipping = try container.decode(Double.self, forKey: .shipping)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: WeightResponse
         Used By: Catalog
     */

    class WeightResponse: Codable {
        public var shipping: Double

        public var isDefault: Bool

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case shipping

            case isDefault = "is_default"

            case unit
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.shipping = shipping

            self.isDefault = isDefault

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipping = try container.decode(Double.self, forKey: .shipping)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
