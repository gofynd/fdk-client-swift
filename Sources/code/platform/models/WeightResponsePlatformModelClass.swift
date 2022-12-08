

import Foundation
public extension PlatformClient {
    /*
         Model: WeightResponse
         Used By: Catalog
     */

    class WeightResponse: Codable {
        public var unit: String

        public var shipping: Double

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case unit

            case shipping

            case isDefault = "is_default"
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            self.unit = unit

            self.shipping = shipping

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            shipping = try container.decode(Double.self, forKey: .shipping)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
