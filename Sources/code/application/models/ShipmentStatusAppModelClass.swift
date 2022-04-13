import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatus
         Used By: Order
     */
    class ShipmentStatus: Codable {
        public var title: String?

        public var hexCode: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case hexCode = "hex_code"
        }

        public init(hexCode: String? = nil, title: String? = nil) {
            self.title = title

            self.hexCode = hexCode
        }

        public func duplicate() -> ShipmentStatus {
            let dict = self.dictionary!
            let copy = ShipmentStatus(dictionary: dict)!
            return copy
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
        }
    }
}
