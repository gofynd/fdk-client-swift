

import Foundation

public extension PlatformClient.Logistics {
    /*
         Model: ServiceabilityErrorResponse
         Used By: Logistics
     */

    class ServiceabilityErrorResponse: Codable {
        public var value: String

        public var message: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case value

            case message

            case type
        }

        public init(message: String, type: String, value: String) {
            self.value = value

            self.message = message

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistics {
    /*
         Model: ServiceabilityErrorResponse
         Used By: Logistics
     */

    class ServiceabilityErrorResponse: Codable {
        public var value: String

        public var message: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case value

            case message

            case type
        }

        public init(message: String, type: String, value: String) {
            self.value = value

            self.message = message

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
