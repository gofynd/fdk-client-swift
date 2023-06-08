

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ErrorResponse1
         Used By: Serviceability
     */

    class ErrorResponse1: Codable {
        public var message: String

        public var type: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case message

            case type

            case value
        }

        public init(message: String, type: String, value: String) {
            self.message = message

            self.type = type

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ErrorResponse1
         Used By: Serviceability
     */

    class ErrorResponse1: Codable {
        public var message: String

        public var type: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case message

            case type

            case value
        }

        public init(message: String, type: String, value: String) {
            self.message = message

            self.type = type

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
