

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PincodeMopUpdateAuditHistoryResponseData
         Used By: Serviceability
     */

    class PincodeMopUpdateAuditHistoryResponseData: Codable {
        public var entityType: String?

        public var page: PincodeMopUpdateAuditHistoryPaging

        public var data: [PincodeMopUpdateAuditHistoryResponse]

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case page

            case data
        }

        public init(data: [PincodeMopUpdateAuditHistoryResponse], entityType: String? = nil, page: PincodeMopUpdateAuditHistoryPaging) {
            self.entityType = entityType

            self.page = page

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(PincodeMopUpdateAuditHistoryPaging.self, forKey: .page)

            data = try container.decode([PincodeMopUpdateAuditHistoryResponse].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PincodeMopUpdateAuditHistoryResponseData
         Used By: Serviceability
     */

    class PincodeMopUpdateAuditHistoryResponseData: Codable {
        public var entityType: String?

        public var page: PincodeMopUpdateAuditHistoryPaging

        public var data: [PincodeMopUpdateAuditHistoryResponse]

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case page

            case data
        }

        public init(data: [PincodeMopUpdateAuditHistoryResponse], entityType: String? = nil, page: PincodeMopUpdateAuditHistoryPaging) {
            self.entityType = entityType

            self.page = page

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(PincodeMopUpdateAuditHistoryPaging.self, forKey: .page)

            data = try container.decode([PincodeMopUpdateAuditHistoryResponse].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
