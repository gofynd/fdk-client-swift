

import Foundation
public extension PlatformClient {
    /*
         Model: VerifyOtpSuccess
         Used By: User
     */

    class VerifyOtpSuccess: Codable {
        public var user: UserSchema?

        public var userExists: Bool?

        public var registerToken: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case userExists = "user_exists"

            case registerToken = "register_token"
        }

        public init(registerToken: String? = nil, user: UserSchema? = nil, userExists: Bool? = nil) {
            self.user = user

            self.userExists = userExists

            self.registerToken = registerToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

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
                registerToken = try container.decode(String.self, forKey: .registerToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(userExists, forKey: .userExists)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
        }
    }
}
