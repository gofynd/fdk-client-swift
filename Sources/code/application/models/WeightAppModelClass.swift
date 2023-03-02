

import Foundation
public extension ApplicationClient {
    /*
         Model: Weight
         Used By: Catalog
     */
    class Weight: Codable {
        public var shipping: Double

        public var unit: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case shipping

            case unit

            case isDefault = "is_default"
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.shipping = shipping

            self.unit = unit

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipping = try container.decode(Double.self, forKey: .shipping)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
