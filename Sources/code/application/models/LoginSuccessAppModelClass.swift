

import Foundation
public extension ApplicationClient {
    /*
         Model: LoginSuccess
         Used By: User
     */
    class LoginSuccess: Codable {
        public var user: UserSchema?

        public var requestId: String?

        public var registerToken: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case requestId = "request_id"

            case registerToken = "register_token"
        }

        public init(registerToken: String? = nil, requestId: String? = nil, user: UserSchema? = nil) {
            self.user = user

            self.requestId = requestId

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
                requestId = try container.decode(String.self, forKey: .requestId)

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

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
        }
    }
}
