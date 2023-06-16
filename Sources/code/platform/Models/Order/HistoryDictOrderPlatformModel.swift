

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var assignedAgent: String?

        public var displayMessage: String?

        public var bagId: Int?

        public var meta: [String: Any]?

        public var ticketId: String?

        public var l2Detail: String?

        public var user: String

        public var message: String

        public var createdat: String

        public var type: String

        public var ticketUrl: String?

        public var l3Detail: String?

        public var l1Detail: String?

        public enum CodingKeys: String, CodingKey {
            case assignedAgent = "assigned_agent"

            case displayMessage = "display_message"

            case bagId = "bag_id"

            case meta

            case ticketId = "ticket_id"

            case l2Detail = "l2_detail"

            case user

            case message

            case createdat

            case type

            case ticketUrl = "ticket_url"

            case l3Detail = "l3_detail"

            case l1Detail = "l1_detail"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: [String: Any]? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.assignedAgent = assignedAgent

            self.displayMessage = displayMessage

            self.bagId = bagId

            self.meta = meta

            self.ticketId = ticketId

            self.l2Detail = l2Detail

            self.user = user

            self.message = message

            self.createdat = createdat

            self.type = type

            self.ticketUrl = ticketUrl

            self.l3Detail = l3Detail

            self.l1Detail = l1Detail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

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

            do {
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            message = try container.decode(String.self, forKey: .message)

            createdat = try container.decode(String.self, forKey: .createdat)

            type = try container.decode(String.self, forKey: .type)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3Detail = try container.decode(String.self, forKey: .l3Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var assignedAgent: String?

        public var displayMessage: String?

        public var bagId: Int?

        public var meta: [String: Any]?

        public var ticketId: String?

        public var l2Detail: String?

        public var user: String

        public var message: String

        public var createdat: String

        public var type: String

        public var ticketUrl: String?

        public var l3Detail: String?

        public var l1Detail: String?

        public enum CodingKeys: String, CodingKey {
            case assignedAgent = "assigned_agent"

            case displayMessage = "display_message"

            case bagId = "bag_id"

            case meta

            case ticketId = "ticket_id"

            case l2Detail = "l2_detail"

            case user

            case message

            case createdat

            case type

            case ticketUrl = "ticket_url"

            case l3Detail = "l3_detail"

            case l1Detail = "l1_detail"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: [String: Any]? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.assignedAgent = assignedAgent

            self.displayMessage = displayMessage

            self.bagId = bagId

            self.meta = meta

            self.ticketId = ticketId

            self.l2Detail = l2Detail

            self.user = user

            self.message = message

            self.createdat = createdat

            self.type = type

            self.ticketUrl = ticketUrl

            self.l3Detail = l3Detail

            self.l1Detail = l1Detail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

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

            do {
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            message = try container.decode(String.self, forKey: .message)

            createdat = try container.decode(String.self, forKey: .createdat)

            type = try container.decode(String.self, forKey: .type)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3Detail = try container.decode(String.self, forKey: .l3Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)
        }
    }
}
