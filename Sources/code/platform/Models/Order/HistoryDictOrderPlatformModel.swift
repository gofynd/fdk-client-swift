

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var l2Detail: String?

        public var ticketUrl: String?

        public var createdat: String

        public var ticketId: String?

        public var l3Detail: String?

        public var assignedAgent: String?

        public var l1Detail: String?

        public var bagId: Int?

        public var meta: HistoryMeta?

        public var type: String

        public var message: String

        public var user: String

        public var displayMessage: String?

        public enum CodingKeys: String, CodingKey {
            case l2Detail = "l2_detail"

            case ticketUrl = "ticket_url"

            case createdat

            case ticketId = "ticket_id"

            case l3Detail = "l3_detail"

            case assignedAgent = "assigned_agent"

            case l1Detail = "l1_detail"

            case bagId = "bag_id"

            case meta

            case type

            case message

            case user

            case displayMessage = "display_message"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l2Detail = l2Detail

            self.ticketUrl = ticketUrl

            self.createdat = createdat

            self.ticketId = ticketId

            self.l3Detail = l3Detail

            self.assignedAgent = assignedAgent

            self.l1Detail = l1Detail

            self.bagId = bagId

            self.meta = meta

            self.type = type

            self.message = message

            self.user = user

            self.displayMessage = displayMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                ticketId = try container.decode(String.self, forKey: .ticketId)

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
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

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

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            user = try container.decode(String.self, forKey: .user)

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var l2Detail: String?

        public var ticketUrl: String?

        public var createdat: String

        public var ticketId: String?

        public var l3Detail: String?

        public var assignedAgent: String?

        public var l1Detail: String?

        public var bagId: Int?

        public var meta: HistoryMeta?

        public var type: String

        public var message: String

        public var user: String

        public var displayMessage: String?

        public enum CodingKeys: String, CodingKey {
            case l2Detail = "l2_detail"

            case ticketUrl = "ticket_url"

            case createdat

            case ticketId = "ticket_id"

            case l3Detail = "l3_detail"

            case assignedAgent = "assigned_agent"

            case l1Detail = "l1_detail"

            case bagId = "bag_id"

            case meta

            case type

            case message

            case user

            case displayMessage = "display_message"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l2Detail = l2Detail

            self.ticketUrl = ticketUrl

            self.createdat = createdat

            self.ticketId = ticketId

            self.l3Detail = l3Detail

            self.assignedAgent = assignedAgent

            self.l1Detail = l1Detail

            self.bagId = bagId

            self.meta = meta

            self.type = type

            self.message = message

            self.user = user

            self.displayMessage = displayMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                ticketId = try container.decode(String.self, forKey: .ticketId)

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
                assignedAgent = try container.decode(String.self, forKey: .assignedAgent)

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

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            user = try container.decode(String.self, forKey: .user)

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)
        }
    }
}
