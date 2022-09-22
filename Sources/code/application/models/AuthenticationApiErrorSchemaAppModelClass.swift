

import Foundation
public extension ApplicationClient {
    /*
         Model: AuthenticationApiErrorSchema
         Used By: User
     */
    class AuthenticationApiErrorSchema: Codable {
        public var message: String?

        public var isDeleted: Bool?

        public enum CodingKeys: String, CodingKey {
            case message

            case isDeleted = "is_deleted"
        }

        public init(isDeleted: Bool? = nil, message: String? = nil) {
            self.message = message

            self.isDeleted = isDeleted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        }
    }
}
