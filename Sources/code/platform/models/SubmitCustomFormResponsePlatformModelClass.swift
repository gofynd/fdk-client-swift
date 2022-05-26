

import Foundation
public extension PlatformClient {
    /*
         Model: SubmitCustomFormResponse
         Used By: Lead
     */

    class SubmitCustomFormResponse: Codable {
        public var ticket: Ticket

        public enum CodingKeys: String, CodingKey {
            case ticket
        }

        public init(ticket: Ticket) {
            self.ticket = ticket
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ticket = try container.decode(Ticket.self, forKey: .ticket)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ticket, forKey: .ticket)
        }
    }
}
