

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: LinkStatus
         Used By: Payment
     */
    class LinkStatus: Codable {
        public var message: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case status
        }

        public init(message: String, status: Bool) {
            self.message = message

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
