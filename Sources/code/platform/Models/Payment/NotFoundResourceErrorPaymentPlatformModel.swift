

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: NotFoundResourceError
         Used By: Payment
     */

    class NotFoundResourceError: Codable {
        public var description: String

        public var code: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case description

            case code

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.code = code

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var code: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case description

            case code

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.code = code

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
