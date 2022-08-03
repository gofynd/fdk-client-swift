

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var uid: Int

        public var avisUserId: String

        public var mobile: String

        public var email: String

        public var lastName: String

        public var gender: String

        public var firstName: String

        public var isAnonymousUser: Bool

        public enum CodingKeys: String, CodingKey {
            case uid

            case avisUserId = "avis_user_id"

            case mobile

            case email

            case lastName = "last_name"

            case gender

            case firstName = "first_name"

            case isAnonymousUser = "is_anonymous_user"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.uid = uid

            self.avisUserId = avisUserId

            self.mobile = mobile

            self.email = email

            self.lastName = lastName

            self.gender = gender

            self.firstName = firstName

            self.isAnonymousUser = isAnonymousUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            mobile = try container.decode(String.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            lastName = try container.decode(String.self, forKey: .lastName)

            gender = try container.decode(String.self, forKey: .gender)

            firstName = try container.decode(String.self, forKey: .firstName)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
        }
    }
}
