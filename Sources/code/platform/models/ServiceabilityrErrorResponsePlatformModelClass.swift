

import Foundation
public extension PlatformClient {
    /*
         Model: ServiceabilityrErrorResponse
         Used By: Logistic
     */

    class ServiceabilityrErrorResponse: Codable {
        public var type: String

        public var message: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case type

            case message

            case value
        }

        public init(message: String, type: String, value: String) {
            self.type = type

            self.message = message

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
