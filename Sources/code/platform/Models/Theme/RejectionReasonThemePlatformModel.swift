

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: RejectionReason
         Used By: Theme
     */

    class RejectionReason: Codable {
        public var message: String

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String) {
            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: RejectionReason
         Used By: Theme
     */

    class RejectionReason: Codable {
        public var message: String

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String) {
            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}