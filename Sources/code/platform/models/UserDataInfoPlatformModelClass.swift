

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var firstName: String

        public var avisUserId: String

        public var mobile: String

        public var lastName: String

        public var email: String

        public var gender: String

        public var isAnonymousUser: Bool

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case avisUserId = "avis_user_id"

            case mobile

            case lastName = "last_name"

            case email

            case gender

            case isAnonymousUser = "is_anonymous_user"

            case uid
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.firstName = firstName

            self.avisUserId = avisUserId

            self.mobile = mobile

            self.lastName = lastName

            self.email = email

            self.gender = gender

            self.isAnonymousUser = isAnonymousUser

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            mobile = try container.decode(String.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            email = try container.decode(String.self, forKey: .email)

            gender = try container.decode(String.self, forKey: .gender)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
