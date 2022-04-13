import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var companyId: Int?

        public var user: [String: Any]

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case user

            case url
        }

        public init(companyId: Int?, url: String, user: [String: Any]) {
            self.companyId = companyId

            self.user = user

            self.url = url
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

            user = try container.decode([String: Any].self, forKey: .user)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
