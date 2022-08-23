

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var isAnonymousUser: Bool

        public var firstName: String

        public var lastName: String

        public var avisUserId: String

        public var email: String

        public var gender: String

        public var uid: Int

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case isAnonymousUser = "is_anonymous_user"

            case firstName = "first_name"

            case lastName = "last_name"

            case avisUserId = "avis_user_id"

            case email

            case gender

            case uid

            case mobile
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.isAnonymousUser = isAnonymousUser

            self.firstName = firstName

            self.lastName = lastName

            self.avisUserId = avisUserId

            self.email = email

            self.gender = gender

            self.uid = uid

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            email = try container.decode(String.self, forKey: .email)

            gender = try container.decode(String.self, forKey: .gender)

            uid = try container.decode(Int.self, forKey: .uid)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
