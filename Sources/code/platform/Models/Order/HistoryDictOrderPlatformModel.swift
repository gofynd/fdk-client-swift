

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var meta: HistoryMeta?

        public var l2Detail: String?

        public var assignedAgent: String?

        public var l1Detail: String?

        public var ticketUrl: String?

        public var displayMessage: String?

        public var type: String

        public var user: String

        public var createdat: String

        public var l3Detail: String?

        public var ticketId: String?

        public var message: String

        public var bagId: Int?

        public enum CodingKeys: String, CodingKey {
            case meta

            case l2Detail = "l2_detail"

            case assignedAgent = "assigned_agent"

            case l1Detail = "l1_detail"

            case ticketUrl = "ticket_url"

            case displayMessage = "display_message"

            case type

            case user

            case createdat

            case l3Detail = "l3_detail"

            case ticketId = "ticket_id"

            case message

            case bagId = "bag_id"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.meta = meta

            self.l2Detail = l2Detail

            self.assignedAgent = assignedAgent

            self.l1Detail = l1Detail

            self.ticketUrl = ticketUrl

            self.displayMessage = displayMessage

            self.type = type

            self.user = user

            self.createdat = createdat

            self.l3Detail = l3Detail

            self.ticketId = ticketId

            self.message = message

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

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

            type = try container.decode(String.self, forKey: .type)

            user = try container.decode(String.self, forKey: .user)

            createdat = try container.decode(String.self, forKey: .createdat)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encode(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var meta: HistoryMeta?

        public var l2Detail: String?

        public var assignedAgent: String?

        public var l1Detail: String?

        public var ticketUrl: String?

        public var displayMessage: String?

        public var type: String

        public var user: String

        public var createdat: String

        public var l3Detail: String?

        public var ticketId: String?

        public var message: String

        public var bagId: Int?

        public enum CodingKeys: String, CodingKey {
            case meta

            case l2Detail = "l2_detail"

            case assignedAgent = "assigned_agent"

            case l1Detail = "l1_detail"

            case ticketUrl = "ticket_url"

            case displayMessage = "display_message"

            case type

            case user

            case createdat

            case l3Detail = "l3_detail"

            case ticketId = "ticket_id"

            case message

            case bagId = "bag_id"
        }

        public init(assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.meta = meta

            self.l2Detail = l2Detail

            self.assignedAgent = assignedAgent

            self.l1Detail = l1Detail

            self.ticketUrl = ticketUrl

            self.displayMessage = displayMessage

            self.type = type

            self.user = user

            self.createdat = createdat

            self.l3Detail = l3Detail

            self.ticketId = ticketId

            self.message = message

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(HistoryMeta.self, forKey: .meta)

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

            type = try container.decode(String.self, forKey: .type)

            user = try container.decode(String.self, forKey: .user)

            createdat = try container.decode(String.self, forKey: .createdat)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encode(displayMessage, forKey: .displayMessage)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
