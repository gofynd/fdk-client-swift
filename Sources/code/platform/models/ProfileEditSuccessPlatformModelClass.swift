

import Foundation
public extension PlatformClient {
    /*
         Model: ProfileEditSuccess
         Used By: User
     */

    class ProfileEditSuccess: Codable {
        public var user: UserSchema?

        public var resendEmailToken: String?

        public var registerToken: String?

        public var userExists: Bool?

        public var verifyEmailLink: Bool?

        public var verifyEmailOtp: Bool?

        public var verifyMobileOtp: Bool?

        public var email: String?

        public var requestId: String?

        public var countryCode: String?

        public var mobile: String?

        public var success: Bool?

        public var message: String?

        public var resendTimer: Int?

        public var resendToken: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case resendEmailToken = "resend_email_token"

            case registerToken = "register_token"

            case userExists = "user_exists"

            case verifyEmailLink = "verify_email_link"

            case verifyEmailOtp = "verify_email_otp"

            case verifyMobileOtp = "verify_mobile_otp"

            case email

            case requestId = "request_id"

            case countryCode = "country_code"

            case mobile

            case success

            case message

            case resendTimer = "resend_timer"

            case resendToken = "resend_token"
        }

        public init(countryCode: String? = nil, email: String? = nil, message: String? = nil, mobile: String? = nil, registerToken: String? = nil, requestId: String? = nil, resendEmailToken: String? = nil, resendTimer: Int? = nil, resendToken: String? = nil, success: Bool? = nil, user: UserSchema? = nil, userExists: Bool? = nil, verifyEmailLink: Bool? = nil, verifyEmailOtp: Bool? = nil, verifyMobileOtp: Bool? = nil) {
            self.user = user

            self.resendEmailToken = resendEmailToken

            self.registerToken = registerToken

            self.userExists = userExists

            self.verifyEmailLink = verifyEmailLink

            self.verifyEmailOtp = verifyEmailOtp

            self.verifyMobileOtp = verifyMobileOtp

            self.email = email

            self.requestId = requestId

            self.countryCode = countryCode

            self.mobile = mobile

            self.success = success

            self.message = message

            self.resendTimer = resendTimer

            self.resendToken = resendToken
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
                resendEmailToken = try container.decode(String.self, forKey: .resendEmailToken)

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
                userExists = try container.decode(Bool.self, forKey: .userExists)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                success = try container.decode(Bool.self, forKey: .success)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(resendEmailToken, forKey: .resendEmailToken)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)

            try? container.encodeIfPresent(userExists, forKey: .userExists)

            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)

            try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)

            try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
        }
    }
}
