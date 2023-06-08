

import Foundation

public extension PlatformClient.Lead {
    /*
         Model: SubmitCustomFormResponse
         Used By: Lead
     */

    class SubmitCustomFormResponse: Codable {
        public var message: String

        public var ticket: Ticket?

        public enum CodingKeys: String, CodingKey {
            case message

            case ticket
        }

        public init(message: String, ticket: Ticket? = nil) {
            self.message = message

            self.ticket = ticket
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                ticket = try container.decode(Ticket.self, forKey: .ticket)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticket, forKey: .ticket)
        }
    }
}

public extension PlatformClient.ApplicationClient.Lead {
    /*
         Model: SubmitCustomFormResponse
         Used By: Lead
     */

    class SubmitCustomFormResponse: Codable {
        public var message: String

        public var ticket: Ticket?

        public enum CodingKeys: String, CodingKey {
            case message

            case ticket
        }

        public init(message: String, ticket: Ticket? = nil) {
            self.message = message

            self.ticket = ticket
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                ticket = try container.decode(Ticket.self, forKey: .ticket)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticket, forKey: .ticket)
        }
    }
}
