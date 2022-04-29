

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var user: [String: Any]?

        public var batchId: String

        public var companyId: Int

        public var sizes: [Size1]

        public enum CodingKeys: String, CodingKey {
            case user

            case batchId = "batch_id"

            case companyId = "company_id"

            case sizes
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]? = nil) {
            self.user = user

            self.batchId = batchId

            self.companyId = companyId

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([Size1].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
