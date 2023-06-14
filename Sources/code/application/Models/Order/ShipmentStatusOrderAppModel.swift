

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */
    class ShipmentStatus: Codable {
        public var title: String?

        public var hexCode: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case hexCode = "hex_code"

            case value
        }

        public init(hexCode: String? = nil, title: String? = nil, value: String? = nil) {
            self.title = title

            self.hexCode = hexCode

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hexCode = try container.decode(String.self, forKey: .hexCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encode(value, forKey: .value)
        }
    }
}
