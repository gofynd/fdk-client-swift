import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateUserResponseSchema
         Used By: User
     */
    class CreateUserResponseSchema: Codable {
        public var user: UserSchema?

        public enum CodingKeys: String, CodingKey {
            case user
        }

        public init(user: UserSchema?) {
            self.user = user
        }

        public func duplicate() -> CreateUserResponseSchema {
            let dict = self.dictionary!
            let copy = CreateUserResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
