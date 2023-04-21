

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: NotFoundResourceError
         Used By: Payment
     */

    class NotFoundResourceError: Codable {
        public var description: String

        public var success: Bool

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case description

            case success

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.success = success

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: NotFoundResourceError
         Used By: Payment
     */

    class NotFoundResourceError: Codable {
        public var description: String

        public var success: Bool

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case description

            case success

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.success = success

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
