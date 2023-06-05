

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var l1Detail: String?

        public var ticketId: String?

        public var user: String

        public var ticketUrl: String?

        public var displayMessage: String?

        public var l3Detail: String?

        public var l2Detail: String?

        public var bagId: Int?

        public var meta: [String: Any]?

        public var createdat: String

        public var message: String

        public var type: String

        public var assignedAgent: String?

        public enum CodingKeys: String, CodingKey {
            case l1Detail = "l1_detail"

            case ticketId = "ticket_id"

            case user

            case ticketUrl = "ticket_url"

            case displayMessage = "display_message"

            case l3Detail = "l3_detail"

            case l2Detail = "l2_detail"

            case bagId = "bag_id"

            case meta

            case createdat

            case message

            case type

            case assignedAgent = "assigned_agent"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: [String: Any]? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l1Detail = l1Detail

            self.ticketId = ticketId

            self.user = user

            self.ticketUrl = ticketUrl

            self.displayMessage = displayMessage

            self.l3Detail = l3Detail

            self.l2Detail = l2Detail

            self.bagId = bagId

            self.meta = meta

            self.createdat = createdat

            self.message = message

            self.type = type

            self.assignedAgent = assignedAgent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

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

            user = try container.decode(String.self, forKey: .user)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

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
                l3Detail = try container.decode(String.self, forKey: .l3Detail)

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

            createdat = try container.decode(String.self, forKey: .createdat)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)

            do {
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var l1Detail: String?

        public var ticketId: String?

        public var user: String

        public var ticketUrl: String?

        public var displayMessage: String?

        public var l3Detail: String?

        public var l2Detail: String?

        public var bagId: Int?

        public var meta: [String: Any]?

        public var createdat: String

        public var message: String

        public var type: String

        public var assignedAgent: String?

        public enum CodingKeys: String, CodingKey {
            case l1Detail = "l1_detail"

            case ticketId = "ticket_id"

            case user

            case ticketUrl = "ticket_url"

            case displayMessage = "display_message"

            case l3Detail = "l3_detail"

            case l2Detail = "l2_detail"

            case bagId = "bag_id"

            case meta

            case createdat

            case message

            case type

            case assignedAgent = "assigned_agent"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: [String: Any]? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l1Detail = l1Detail

            self.ticketId = ticketId

            self.user = user

            self.ticketUrl = ticketUrl

            self.displayMessage = displayMessage

            self.l3Detail = l3Detail

            self.l2Detail = l2Detail

            self.bagId = bagId

            self.meta = meta

            self.createdat = createdat

            self.message = message

            self.type = type

            self.assignedAgent = assignedAgent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

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

            user = try container.decode(String.self, forKey: .user)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

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
                l3Detail = try container.decode(String.self, forKey: .l3Detail)

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

            createdat = try container.decode(String.self, forKey: .createdat)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)

            do {
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)
        }
    }
}
