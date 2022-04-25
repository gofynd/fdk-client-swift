

import Foundation
public extension PlatformClient {
    /*
         Model: ProfileEditSuccessSchema
         Used By: User
     */

    class ProfileEditSuccessSchema: Codable {
        public var email: String?

        public var verifyEmailOtp: Bool?

        public var verifyEmailLink: Bool?

        public var verifyMobileOtp: Bool?

        public var user: String?

        public var registerToken: String?

        public var userExists: Bool?

        public enum CodingKeys: String, CodingKey {
            case email

            case verifyEmailOtp = "verify_email_otp"

            case verifyEmailLink = "verify_email_link"

            case verifyMobileOtp = "verify_mobile_otp"

            case user

            case registerToken = "register_token"

            case userExists = "user_exists"
        }

        public init(email: String? = nil, registerToken: String? = nil, user: String? = nil, userExists: Bool? = nil, verifyEmailLink: Bool? = nil, verifyEmailOtp: Bool? = nil, verifyMobileOtp: Bool? = nil) {
            self.email = email

            self.verifyEmailOtp = verifyEmailOtp

            self.verifyEmailLink = verifyEmailLink

            self.verifyMobileOtp = verifyMobileOtp

            self.user = user

            self.registerToken = registerToken

            self.userExists = userExists
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
                verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)

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
                verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)

            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)

            try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)

            try? container.encodeIfPresent(userExists, forKey: .userExists)
        }
    }
}
