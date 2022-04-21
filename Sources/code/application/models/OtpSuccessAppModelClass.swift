

import Foundation
public extension ApplicationClient {
    /*
         Model: OtpSuccess
         Used By: User
     */
    class OtpSuccess: Codable {
        public var resendTimer: Int?

        public var resendToken: String?

        public var registerToken: String?

        public var success: Bool?

        public var requestId: String?

        public var message: String?

        public var mobile: String?

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case resendTimer = "resend_timer"

            case resendToken = "resend_token"

            case registerToken = "register_token"

            case success

            case requestId = "request_id"

            case message

            case mobile

            case countryCode = "country_code"
        }

        public init(countryCode: String? = nil, message: String? = nil, mobile: String? = nil, registerToken: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, resendToken: String? = nil, success: Bool? = nil) {
            self.resendTimer = resendTimer

            self.resendToken = resendToken

            self.registerToken = registerToken

            self.success = success

            self.requestId = requestId

            self.message = message

            self.mobile = mobile

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                resendToken = try container.decode(String.self, forKey: .resendToken)

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
                success = try container.decode(Bool.self, forKey: .success)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(resendToken, forKey: .resendToken)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
