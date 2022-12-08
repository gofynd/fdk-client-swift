

import Foundation
public extension PlatformClient {
    /*
         Model: DpConfiguration
         Used By: Order
     */

    class DpConfiguration: Codable {
        public var shippingBy: String?

        public enum CodingKeys: String, CodingKey {
            case shippingBy = "shipping_by"
        }

        public init(shippingBy: String? = nil) {
            self.shippingBy = shippingBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingBy = try container.decode(String.self, forKey: .shippingBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
        }
    }
}
