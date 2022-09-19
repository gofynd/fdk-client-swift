

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var firstName: String

        public var gender: String

        public var email: String

        public var mobile: String

        public var isAnonymousUser: Bool

        public var lastName: String

        public var avisUserId: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case gender

            case email

            case mobile

            case isAnonymousUser = "is_anonymous_user"

            case lastName = "last_name"

            case avisUserId = "avis_user_id"

            case uid
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.firstName = firstName

            self.gender = gender

            self.email = email

            self.mobile = mobile

            self.isAnonymousUser = isAnonymousUser

            self.lastName = lastName

            self.avisUserId = avisUserId

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            gender = try container.decode(String.self, forKey: .gender)

            email = try container.decode(String.self, forKey: .email)

            mobile = try container.decode(String.self, forKey: .mobile)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            lastName = try container.decode(String.self, forKey: .lastName)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
