

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBulkAssets
         Used By: Catalog
     */

    class ProductBulkAssets: Codable {
        public var url: String

        public var batchId: String?

        public var user: [String: Any]

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case batchId = "batch_id"

            case user

            case companyId = "company_id"
        }

        public init(batchId: String? = nil, companyId: Int? = nil, url: String, user: [String: Any]) {
            self.url = url

            self.batchId = batchId

            self.user = user

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode([String: Any].self, forKey: .user)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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

        public var batchId: String?

        public var user: [String: Any]

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case batchId = "batch_id"

            case user

            case companyId = "company_id"
        }

        public init(batchId: String? = nil, companyId: Int? = nil, url: String, user: [String: Any]) {
            self.url = url

            self.batchId = batchId

            self.user = user

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                batchId = try container.decode(String.self, forKey: .batchId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode([String: Any].self, forKey: .user)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
