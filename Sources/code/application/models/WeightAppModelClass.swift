

import Foundation
public extension ApplicationClient {
    /*
         Model: Weight
         Used By: Catalog
     */
    class Weight: Codable {
        public var isDefault: Bool

        public var shipping: Double

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case shipping

            case unit
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.isDefault = isDefault

            self.shipping = shipping

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            shipping = try container.decode(Double.self, forKey: .shipping)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
