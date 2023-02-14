

import Foundation
public extension PlatformClient {
    /*
         Model: ErrorResponse
         Used By: Order
     */

    class ErrorResponse: Codable {
        public var error: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case error

            case message
        }

        public init(error: String, message: String) {
            self.error = error

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(String.self, forKey: .error)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
