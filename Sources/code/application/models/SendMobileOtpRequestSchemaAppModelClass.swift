

import Foundation
public extension ApplicationClient {
    /*
         Model: SendMobileOtpRequestSchema
         Used By: User
     */
    class SendMobileOtpRequestSchema: Codable {
        public var mobile: String?

        public var countryCode: String?

        public var action: String?

        public var token: String?

        public var androidHash: String?

        public var force: String?

        public var captchaCode: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case countryCode = "country_code"

            case action

            case token

            case androidHash = "android_hash"

            case force

            case captchaCode = "captcha_code"
        }

        public init(action: String? = nil, androidHash: String? = nil, captchaCode: String? = nil, countryCode: String? = nil, force: String? = nil, mobile: String? = nil, token: String? = nil) {
            self.mobile = mobile

            self.countryCode = countryCode

            self.action = action

            self.token = token

            self.androidHash = androidHash

            self.force = force

            self.captchaCode = captchaCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                androidHash = try container.decode(String.self, forKey: .androidHash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                force = try container.decode(String.self, forKey: .force)

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

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(androidHash, forKey: .androidHash)

            try? container.encodeIfPresent(force, forKey: .force)

            try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
        }
    }
}
