

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var displayMessage: String?

        public var createdat: String

        public var bagId: Int?

        public var user: String

        public var l2Detail: String?

        public var l1Detail: String?

        public var type: String

        public var meta: HistoryMeta?

        public var assignedAgent: String?

        public var message: String

        public var ticketUrl: String?

        public var l3Detail: String?

        public var ticketId: String?

        public enum CodingKeys: String, CodingKey {
            case displayMessage = "display_message"

            case createdat

            case bagId = "bag_id"

            case user

            case l2Detail = "l2_detail"

            case l1Detail = "l1_detail"

            case type

            case meta

            case assignedAgent = "assigned_agent"

            case message

            case ticketUrl = "ticket_url"

            case l3Detail = "l3_detail"

            case ticketId = "ticket_id"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.displayMessage = displayMessage

            self.createdat = createdat

            self.bagId = bagId

            self.user = user

            self.l2Detail = l2Detail

            self.l1Detail = l1Detail

            self.type = type

            self.meta = meta

            self.assignedAgent = assignedAgent

            self.message = message

            self.ticketUrl = ticketUrl

            self.l3Detail = l3Detail

            self.ticketId = ticketId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

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

            message = try container.decode(String.self, forKey: .message)

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
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var displayMessage: String?

        public var createdat: String

        public var bagId: Int?

        public var user: String

        public var l2Detail: String?

        public var l1Detail: String?

        public var type: String

        public var meta: HistoryMeta?

        public var assignedAgent: String?

        public var message: String

        public var ticketUrl: String?

        public var l3Detail: String?

        public var ticketId: String?

        public enum CodingKeys: String, CodingKey {
            case displayMessage = "display_message"

            case createdat

            case bagId = "bag_id"

            case user

            case l2Detail = "l2_detail"

            case l1Detail = "l1_detail"

            case type

            case meta

            case assignedAgent = "assigned_agent"

            case message

            case ticketUrl = "ticket_url"

            case l3Detail = "l3_detail"

            case ticketId = "ticket_id"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.displayMessage = displayMessage

            self.createdat = createdat

            self.bagId = bagId

            self.user = user

            self.l2Detail = l2Detail

            self.l1Detail = l1Detail

            self.type = type

            self.meta = meta

            self.assignedAgent = assignedAgent

            self.message = message

            self.ticketUrl = ticketUrl

            self.l3Detail = l3Detail

            self.ticketId = ticketId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayMessage = try container.decode(String.self, forKey: .displayMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            do {
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

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

            message = try container.decode(String.self, forKey: .message)

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
                ticketId = try container.decode(String.self, forKey: .ticketId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
        }
    }
}
