

import Foundation
public extension PlatformClient {
    /*
         Model: HistoryDict
         Used By: Order
     */

    class HistoryDict: Codable {
        public var ticketId: String?

        public var l3Detail: String?

        public var bagId: Int?

        public var user: String

        public var type: String

        public var createdat: String

        public var l1Detail: String?

        public var message: String

        public var ticketUrl: String?

        public var l2Detail: String?

        public enum CodingKeys: String, CodingKey {
            case ticketId = "ticket_id"

            case l3Detail = "l3_detail"

            case bagId = "bag_id"

            case user

            case type

            case createdat

            case l1Detail = "l1_detail"

            case message

            case ticketUrl = "ticket_url"

            case l2Detail = "l2_detail"
        }

        public init(bagId: Int? = nil, createdat: String, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, ticketId: String? = nil, ticketUrl: String? = nil, type: String, user: String) {
            self.ticketId = ticketId

            self.l3Detail = l3Detail

            self.bagId = bagId

            self.user = user

            self.type = type

            self.createdat = createdat

            self.l1Detail = l1Detail

            self.message = message

            self.ticketUrl = ticketUrl

            self.l2Detail = l2Detail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(String.self, forKey: .user)

            type = try container.decode(String.self, forKey: .type)

            createdat = try container.decode(String.self, forKey: .createdat)

            do {
                l1Detail = try container.decode(String.self, forKey: .l1Detail)

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
                l2Detail = try container.decode(String.self, forKey: .l2Detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)

            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)
        }
    }
}
