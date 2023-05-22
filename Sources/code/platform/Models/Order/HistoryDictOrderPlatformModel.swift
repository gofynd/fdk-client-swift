

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var user: String

        public var l1Detail: String?

        public var assignedAgent: String?

        public var ticketId: String?

        public var message: String

        public var ticketUrl: String?

        public var type: String

        public var bagId: Int?

        public var meta: HistoryMeta?

        public var createdat: String

        public var l2Detail: String?

        public var l3Detail: String?

        public var displayMessage: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case l1Detail = "l1_detail"

            case assignedAgent = "assigned_agent"

            case ticketId = "ticket_id"

            case message

            case ticketUrl = "ticket_url"

            case type

            case bagId = "bag_id"

            case meta

            case createdat

            case l2Detail = "l2_detail"

            case l3Detail = "l3_detail"

            case displayMessage = "display_message"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.user = user

            self.l1Detail = l1Detail

            self.assignedAgent = assignedAgent

            self.ticketId = ticketId

            self.message = message

            self.ticketUrl = ticketUrl

            self.type = type

            self.bagId = bagId

            self.meta = meta

            self.createdat = createdat

            self.l2Detail = l2Detail

            self.l3Detail = l3Detail

            self.displayMessage = displayMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

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
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

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

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

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
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encode(displayMessage, forKey: .displayMessage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var user: String

        public var l1Detail: String?

        public var assignedAgent: String?

        public var ticketId: String?

        public var message: String

        public var ticketUrl: String?

        public var type: String

        public var bagId: Int?

        public var meta: HistoryMeta?

        public var createdat: String

        public var l2Detail: String?

        public var l3Detail: String?

        public var displayMessage: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case l1Detail = "l1_detail"

            case assignedAgent = "assigned_agent"

            case ticketId = "ticket_id"

            case message

            case ticketUrl = "ticket_url"

            case type

            case bagId = "bag_id"

            case meta

            case createdat

            case l2Detail = "l2_detail"

            case l3Detail = "l3_detail"

            case displayMessage = "display_message"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.user = user

            self.l1Detail = l1Detail

            self.assignedAgent = assignedAgent

            self.ticketId = ticketId

            self.message = message

            self.ticketUrl = ticketUrl

            self.type = type

            self.bagId = bagId

            self.meta = meta

            self.createdat = createdat

            self.l2Detail = l2Detail

            self.l3Detail = l3Detail

            self.displayMessage = displayMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

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
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

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

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

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
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encode(displayMessage, forKey: .displayMessage)
        }
    }
}
