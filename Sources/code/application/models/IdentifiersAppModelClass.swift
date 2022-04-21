

import Foundation
public extension ApplicationClient {
    /*
         Model: Identifiers
         Used By: Order
     */
    class Identifiers: Codable {
        public var ean: String?

        public var skuCode: String?

        public enum CodingKeys: String, CodingKey {
            case ean

            case skuCode = "sku_code"
        }

        public init(ean: String? = nil, skuCode: String? = nil) {
            self.ean = ean

            self.skuCode = skuCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)
        }
    }
}
