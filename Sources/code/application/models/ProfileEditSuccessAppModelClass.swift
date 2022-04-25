

import Foundation
public extension ApplicationClient {
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
        }

        public init(email: String? = nil, registerToken: String? = nil, requestId: String? = nil, resendEmailToken: String? = nil, user: UserSchema? = nil, userExists: Bool? = nil, verifyEmailLink: Bool? = nil, verifyEmailOtp: Bool? = nil, verifyMobileOtp: Bool? = nil) {
            self.user = user

            self.resendEmailToken = resendEmailToken

            self.registerToken = registerToken

            self.userExists = userExists

            self.verifyEmailLink = verifyEmailLink

            self.verifyEmailOtp = verifyEmailOtp

            self.verifyMobileOtp = verifyMobileOtp

            self.email = email

            self.requestId = requestId
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
        }
    }
}
