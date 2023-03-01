

import Foundation
public extension PlatformClient {
    /*
         Model: LinkStatus
         Used By: Payment
     */

    class LinkStatus: Codable {
        public var status: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case status

            case message
        }

        public init(message: String, status: Bool) {
            self.status = status

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
