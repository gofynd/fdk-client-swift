

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Identifiers
         Used By: Order
     */
    class Identifiers: Codable {
        public var skuCode: String?

        public var ean: String?

        public enum CodingKeys: String, CodingKey {
            case skuCode = "sku_code"

            case ean
        }

        public init(ean: String? = nil, skuCode: String? = nil) {
            self.skuCode = skuCode

            self.ean = ean
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(ean, forKey: .ean)
        }
    }
}
