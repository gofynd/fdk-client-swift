

import Foundation
public extension PlatformClient {
    /*
         Model: ProductSizeDeleteDataResponse
         Used By: Catalog
     */

    class ProductSizeDeleteDataResponse: Codable {
        public var itemId: Int?

        public var size: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case size

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, itemId: Int? = nil, size: String? = nil) {
            self.itemId = itemId

            self.size = size

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
