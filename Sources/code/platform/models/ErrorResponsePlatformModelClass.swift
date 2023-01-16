

import Foundation
public extension PlatformClient {
    /*
         Model: ErrorResponse
         Used By: Order
     */

    class ErrorResponse: Codable {
        public var message: String

        public var error: String

        public enum CodingKeys: String, CodingKey {
            case message

            case error
        }

        public init(error: String, message: String) {
            self.message = message

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            error = try container.decode(String.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
