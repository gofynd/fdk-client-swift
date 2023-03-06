

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: NetQuantity
         Used By: Cart
     */

    class NetQuantity: Codable {
        public var value: String?

        public var unit: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case unit
        }

        public init(unit: String? = nil, value: String? = nil) {
            self.value = value

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
