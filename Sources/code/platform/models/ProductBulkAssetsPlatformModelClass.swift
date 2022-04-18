import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var companyId: Int?

        public var url: String

        public var user: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case url

            case user
        }

        public init(companyId: Int?, url: String, user: [String: Any]) {
            self.companyId = companyId

            self.url = url

            self.user = user
        }

        public func duplicate() -> ProductBulkAssets {
            let dict = self.dictionary!
            let copy = ProductBulkAssets(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            user = try container.decode([String: Any].self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
