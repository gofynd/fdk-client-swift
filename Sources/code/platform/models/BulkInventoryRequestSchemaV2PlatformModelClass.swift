

import Foundation
public extension PlatformClient {
    /*
         Model: BulkInventoryRequestSchemaV2
         Used By: Catalog
     */

    class BulkInventoryRequestSchemaV2: Codable {
        public var payload: [BulkInventoryPayload]?

        public var meta: [String: Any]?

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case payload

            case meta

            case companyId = "company_id"
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [BulkInventoryPayload]? = nil) {
            self.payload = payload

            self.meta = meta

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payload = try container.decode([BulkInventoryPayload].self, forKey: .payload)

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

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payload, forKey: .payload)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
