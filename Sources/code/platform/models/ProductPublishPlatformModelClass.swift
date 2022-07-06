

import Foundation
public extension PlatformClient {
    /*
         Model: ProductPublish
         Used By: Catalog
     */

    class ProductPublish: Codable {
        public var productOnlineDate: String?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case productOnlineDate = "product_online_date"

            case isSet = "is_set"
        }

        public init(isSet: Bool? = nil, productOnlineDate: String? = nil) {
            self.productOnlineDate = productOnlineDate

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
