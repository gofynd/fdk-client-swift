

import Foundation
public extension ApplicationClient {
    /*
         Model: SendResetPasswordEmailRequestSchema
         Used By: User
     */
    class SendResetPasswordEmailRequestSchema: Codable {
        public var email: String?

        public var captchaCode: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case captchaCode = "captcha_code"
        }

        public init(captchaCode: String? = nil, email: String? = nil) {
            self.email = email

            self.captchaCode = captchaCode
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
                captchaCode = try container.decode(String.self, forKey: .captchaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
        }
    }
}
