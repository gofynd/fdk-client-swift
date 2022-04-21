

import Foundation
public extension PlatformClient {
    /*
         Model: SubmitCustomFormResponse
         Used By: Lead
     */

    class SubmitCustomFormResponse: Codable {
        public var message: String

        public var ticket: Ticket

        public enum CodingKeys: String, CodingKey {
            case message

            case ticket
        }

        public init(message: String, ticket: Ticket) {
            self.message = message

            self.ticket = ticket
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            ticket = try container.decode(Ticket.self, forKey: .ticket)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticket, forKey: .ticket)
        }
    }
}
