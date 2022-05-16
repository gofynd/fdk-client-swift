

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var user: [String: Any]

        public var url: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case user

            case url

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, url: String, user: [String: Any]) {
            self.user = user

            self.url = url

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode([String: Any].self, forKey: .user)

            url = try container.decode(String.self, forKey: .url)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
