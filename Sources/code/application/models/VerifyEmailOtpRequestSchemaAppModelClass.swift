

import Foundation
public extension ApplicationClient {
    /*
         Model: VerifyEmailOtpRequestSchema
         Used By: User
     */
    class VerifyEmailOtpRequestSchema: Codable {
        public var email: String?

        public var action: String?

        public var registerToken: String?

        public var otp: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case action

            case registerToken = "register_token"

            case otp
        }

        public init(action: String? = nil, email: String? = nil, otp: String? = nil, registerToken: String? = nil) {
            self.email = email

            self.action = action

            self.registerToken = registerToken

            self.otp = otp
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
                registerToken = try container.decode(String.self, forKey: .registerToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)

            try? container.encodeIfPresent(otp, forKey: .otp)
        }
    }
}
