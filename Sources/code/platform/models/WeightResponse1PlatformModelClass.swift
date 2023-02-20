

import Foundation
public extension PlatformClient {
    /*
         Model: WeightResponse1
         Used By: Catalog
     */

    class WeightResponse1: Codable {
        public var unit: String?

        public var shipping: Double?

        public enum CodingKeys: String, CodingKey {
            case unit

            case shipping
        }

        public init(shipping: Double? = nil, unit: String? = nil) {
            self.unit = unit

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
                shipping = try container.decode(Double.self, forKey: .shipping)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(shipping, forKey: .shipping)
        }
    }
}
