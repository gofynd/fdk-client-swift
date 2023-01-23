

import Foundation
public extension PlatformClient {
    /*
         Model: SendEmailOtpRequestSchema
         Used By: User
     */

    class SendEmailOtpRequestSchema: Codable {
        public var email: String?

        public var action: String?

        public var token: String?

        public var registerToken: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case action

            case token

            case registerToken = "register_token"
        }

        public init(action: String? = nil, email: String? = nil, registerToken: String? = nil, token: String? = nil) {
            self.email = email

            self.action = action

            self.token = token

            self.registerToken = registerToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

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

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
        }
    }
}
