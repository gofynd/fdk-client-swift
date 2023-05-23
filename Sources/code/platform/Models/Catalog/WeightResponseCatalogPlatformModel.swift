

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: WeightResponse
         Used By: Catalog
     */

    class WeightResponse: Codable {
        public var isDefault: Bool

        public var unit: String

        public var shipping: Double

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case unit

            case shipping
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.isDefault = isDefault

            self.unit = unit

            self.shipping = shipping
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)

            shipping = try container.decode(Double.self, forKey: .shipping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(shipping, forKey: .shipping)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: WeightResponse
         Used By: Catalog
     */

    class WeightResponse: Codable {
        public var isDefault: Bool

        public var unit: String

        public var shipping: Double

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case unit

            case shipping
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.isDefault = isDefault

            self.unit = unit

            self.shipping = shipping
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)

            shipping = try container.decode(Double.self, forKey: .shipping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(shipping, forKey: .shipping)
        }
    }
}
