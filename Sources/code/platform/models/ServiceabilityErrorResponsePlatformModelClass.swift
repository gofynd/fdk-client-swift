

import Foundation
public extension PlatformClient {
    /*
         Model: ServiceabilityErrorResponse
         Used By: Serviceability
     */

    class ServiceabilityErrorResponse: Codable {
        public var value: String

        public var type: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case message
        }

        public init(message: String, type: String, value: String) {
            self.value = value

            self.type = type

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
