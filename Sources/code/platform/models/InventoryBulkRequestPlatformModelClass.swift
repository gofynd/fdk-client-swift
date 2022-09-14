

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var user: [String: Any]?

        public var sizes: [InventoryJobPayload]

        public var companyId: Int

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case user

            case sizes

            case companyId = "company_id"

            case batchId = "batch_id"
        }

        public init(batchId: String, companyId: Int, sizes: [InventoryJobPayload], user: [String: Any]? = nil) {
            self.user = user

            self.sizes = sizes

            self.companyId = companyId

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([InventoryJobPayload].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
