

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: NotFoundResourceError
         Used By: Payment
     */
    class NotFoundResourceError: Codable {
        public var success: Bool

        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.description = description

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
