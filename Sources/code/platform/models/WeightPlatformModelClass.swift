

import Foundation
public extension PlatformClient {
    /*
         Model: Weight
         Used By: Order
     */

    class Weight: Codable {
        public var unit: String?

        public var isDefault: Bool?

        public var shipping: Int?

        public enum CodingKeys: String, CodingKey {
            case unit

            case isDefault = "is_default"

            case shipping
        }

        public init(isDefault: Bool? = nil, shipping: Int? = nil, unit: String? = nil) {
            self.unit = unit

            self.isDefault = isDefault

            self.shipping = shipping
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipping = try container.decode(Int.self, forKey: .shipping)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(shipping, forKey: .shipping)
        }
    }
}
