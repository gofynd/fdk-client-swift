

import Foundation
public extension PlatformClient {
    /*
         Model: TatacliqLuxury
         Used By: Order
     */

    class TatacliqLuxury: Codable {
        public var sku: String?

        public enum CodingKeys: String, CodingKey {
            case sku
        }

        public init(sku: String? = nil) {
            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sku = try container.decode(String.self, forKey: .sku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
