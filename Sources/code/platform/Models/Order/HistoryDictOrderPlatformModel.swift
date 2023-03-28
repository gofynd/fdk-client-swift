

import Foundation

public extension PlatformClient.Order {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var l2Detail: String?

        public var bagId: Int?

        public var type: String

        public var message: String

        public var ticketId: String?

        public var l3Detail: String?

        public var user: String

        public var createdat: String

        public var ticketUrl: String?

        public var l1Detail: String?

        public enum CodingKeys: String, CodingKey {
            case l2Detail = "l2_detail"

            case bagId = "bag_id"

            case type

            case message

            case ticketId = "ticket_id"

            case l3Detail = "l3_detail"

            case user

            case createdat

            case ticketUrl = "ticket_url"

            case l1Detail = "l1_detail"
        }

        public init(bagId: Int? = nil, createdat: String, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l2Detail = l2Detail

            self.bagId = bagId

            self.type = type

            self.message = message

            self.ticketId = ticketId

            self.l3Detail = l3Detail

            self.user = user

            self.createdat = createdat

            self.ticketUrl = ticketUrl

            self.l1Detail = l1Detail
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
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

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

            user = try container.decode(String.self, forKey: .user)

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

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

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

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
        public var l2Detail: String?

        public var bagId: Int?

        public var type: String

        public var message: String

        public var ticketId: String?

        public var l3Detail: String?

        public var user: String

        public var createdat: String

        public var ticketUrl: String?

        public var l1Detail: String?

        public enum CodingKeys: String, CodingKey {
            case l2Detail = "l2_detail"

            case bagId = "bag_id"

            case type

            case message

            case ticketId = "ticket_id"

            case l3Detail = "l3_detail"

            case user

            case createdat

            case ticketUrl = "ticket_url"

            case l1Detail = "l1_detail"
        }

        public init(bagId: Int? = nil, createdat: String, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.l2Detail = l2Detail

            self.bagId = bagId

            self.type = type

            self.message = message

            self.ticketId = ticketId

            self.l3Detail = l3Detail

            self.user = user

            self.createdat = createdat

            self.ticketUrl = ticketUrl

            self.l1Detail = l1Detail
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
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

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

            user = try container.decode(String.self, forKey: .user)

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                ticketUrl = try container.decode(String.self, forKey: .ticketUrl)

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

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)
        }
    }
}
