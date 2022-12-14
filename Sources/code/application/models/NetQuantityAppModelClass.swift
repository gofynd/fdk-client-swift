

import Foundation
public extension ApplicationClient {
    /*
         Model: NetQuantity
         Used By: Catalog
     */
    class NetQuantity: Codable {
        public var value: Double?

        public var unit: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case unit
        }

        public init(unit: String? = nil, value: Double? = nil) {
            self.value = value

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

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
