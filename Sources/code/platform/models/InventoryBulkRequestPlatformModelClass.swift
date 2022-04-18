import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryBulkRequest
         Used By: Catalog
     */

    class InventoryBulkRequest: Codable {
        public var batchId: String

        public var user: [String: Any]?

        public var sizes: [Size1]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case user

            case sizes

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: Int, sizes: [Size1], user: [String: Any]? = nil) {
            self.batchId = batchId

            self.user = user

            self.sizes = sizes

            self.companyId = companyId
        }

        public func duplicate() -> InventoryBulkRequest {
            let dict = self.dictionary!
            let copy = InventoryBulkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sizes = try container.decode([Size1].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
