

import Foundation
public extension PlatformClient {
    /*
         Model: AuthSuccess
         Used By: User
     */

    class AuthSuccess: Codable {
        public var registerToken: String?

        public var userExists: Bool?

        public var user: UserSchema?

        public enum CodingKeys: String, CodingKey {
            case registerToken = "register_token"

            case userExists = "user_exists"

            case user
        }

        public init(registerToken: String? = nil, user: UserSchema? = nil, userExists: Bool? = nil) {
            self.registerToken = registerToken

            self.userExists = userExists

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                registerToken = try container.decode(String.self, forKey: .registerToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userExists = try container.decode(Bool.self, forKey: .userExists)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)

            try? container.encodeIfPresent(userExists, forKey: .userExists)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
