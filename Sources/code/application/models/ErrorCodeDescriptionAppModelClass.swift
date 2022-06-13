

import Foundation
public extension ApplicationClient {
    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */
    class ErrorCodeDescription: Codable {
        public var success: Bool

        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case code

            case description
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.code = code

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
