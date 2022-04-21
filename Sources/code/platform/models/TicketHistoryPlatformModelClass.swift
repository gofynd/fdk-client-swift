

import Foundation
public extension PlatformClient {
    /*
         Model: TicketHistory
         Used By: Lead
     */

    class TicketHistory: Codable {
        public var type: String

        public var value: [String: Any]

        public var ticketId: String

        public var createdOn: CreatedOn?

        public var createdBy: [String: Any]?

        public var id: String

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case ticketId = "ticket_id"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case id = "_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(createdAt: String? = nil, createdBy: [String: Any]? = nil, createdOn: CreatedOn? = nil, ticketId: String, type: String, updatedAt: String? = nil, value: [String: Any], id: String) {
            self.type = type

            self.value = value

            self.ticketId = ticketId

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.id = id

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode([String: Any].self, forKey: .value)

            ticketId = try container.decode(String.self, forKey: .ticketId)

            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
