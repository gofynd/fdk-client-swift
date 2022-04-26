

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryRequestSchemaV2
         Used By: Catalog
     */

    class InventoryRequestSchemaV2: Codable {
        public var payload: [InventoryPayload]?

        public var meta: [String: Any]?

        public var itemId: Int

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case payload

            case meta

            case itemId = "item_id"

            case companyId = "company_id"
        }

        public init(companyId: Int, itemId: Int, meta: [String: Any]? = nil, payload: [InventoryPayload]? = nil) {
            self.payload = payload

            self.meta = meta

            self.itemId = itemId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payload = try container.decode([InventoryPayload].self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payload, forKey: .payload)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
