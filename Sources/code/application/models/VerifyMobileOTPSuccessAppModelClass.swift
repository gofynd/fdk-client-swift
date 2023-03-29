

import Foundation
public extension ApplicationClient {
    /*
         Model: VerifyMobileOTPSuccess
         Used By: User
     */
    class VerifyMobileOTPSuccess: Codable {
        public var user: UserSchema?

        public var verifyMobileLink: Bool?

        public enum CodingKeys: String, CodingKey {
            case user

            case verifyMobileLink = "verify_mobile_link"
        }

        public init(user: UserSchema? = nil, verifyMobileLink: Bool? = nil) {
            self.user = user

            self.verifyMobileLink = verifyMobileLink
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
                verifyMobileLink = try container.decode(Bool.self, forKey: .verifyMobileLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
        }
    }
}
