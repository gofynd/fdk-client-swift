

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var url: String

        public var companyId: Int?

        public var user: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case url

            case companyId = "company_id"

            case user
        }

        public init(companyId: Int? = nil, url: String, user: [String: Any]) {
            self.url = url

            self.companyId = companyId

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode([String: Any].self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var url: String

        public var companyId: Int?

        public var user: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case url

            case companyId = "company_id"

            case user
        }

        public init(companyId: Int? = nil, url: String, user: [String: Any]) {
            self.url = url

            self.companyId = companyId

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode([String: Any].self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
