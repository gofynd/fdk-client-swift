

import Foundation
public extension PlatformClient {
    /*
         Model: BulkInventoryRequestSchemaV2
         Used By: Catalog
     */

    class BulkInventoryRequestSchemaV2: Codable {
        public var companyId: Int

        public var payload: [BulkInventoryPayload]?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case payload

            case meta
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [BulkInventoryPayload]? = nil) {
            self.companyId = companyId

            self.payload = payload

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(payload, forKey: .payload)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
