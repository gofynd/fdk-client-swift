

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Weight
         Used By: Catalog
     */
    class Weight: Codable {
        public var unit: String

        public var isDefault: Bool

        public var shipping: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case isDefault = "is_default"

            case shipping
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.unit = unit

            self.isDefault = isDefault

            self.shipping = shipping
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            shipping = try container.decode(Double.self, forKey: .shipping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(shipping, forKey: .shipping)
        }
    }
}
