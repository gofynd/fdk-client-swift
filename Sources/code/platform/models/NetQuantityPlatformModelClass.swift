

import Foundation
public extension PlatformClient {
    /*
         Model: NetQuantity
         Used By: Catalog
     */

    class NetQuantity: Codable {
        public var unit: [String: Any]

        public var value: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case value
        }

        public init(unit: [String: Any], value: Double) {
            self.unit = unit

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode([String: Any].self, forKey: .unit)

            value = try container.decode(Double.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
