

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryRequestSchemaV2
         Used By: Catalog
     */

    class InventoryRequestSchemaV2: Codable {
        public var meta: [String: Any]?

        public var companyId: Int

        public var payload: [InventoryPayload]?

        public enum CodingKeys: String, CodingKey {
            case meta

            case companyId = "company_id"

            case payload
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [InventoryPayload]? = nil) {
            self.meta = meta

            self.companyId = companyId

            self.payload = payload
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                payload = try container.decode([InventoryPayload].self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(payload, forKey: .payload)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryRequestSchemaV2
         Used By: Catalog
     */

    class InventoryRequestSchemaV2: Codable {
        public var meta: [String: Any]?

        public var companyId: Int

        public var payload: [InventoryPayload]?

        public enum CodingKeys: String, CodingKey {
            case meta

            case companyId = "company_id"

            case payload
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [InventoryPayload]? = nil) {
            self.meta = meta

            self.companyId = companyId

            self.payload = payload
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                payload = try container.decode([InventoryPayload].self, forKey: .payload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(payload, forKey: .payload)
        }
    }
}