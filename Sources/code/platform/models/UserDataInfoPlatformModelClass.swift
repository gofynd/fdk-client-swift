

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var gender: String

        public var firstName: String

        public var avisUserId: String

        public var mobile: String

        public var email: String

        public var lastName: String

        public var uid: Int

        public var isAnonymousUser: Bool

        public enum CodingKeys: String, CodingKey {
            case gender

            case firstName = "first_name"

            case avisUserId = "avis_user_id"

            case mobile

            case email

            case lastName = "last_name"

            case uid

            case isAnonymousUser = "is_anonymous_user"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.gender = gender

            self.firstName = firstName

            self.avisUserId = avisUserId

            self.mobile = mobile

            self.email = email

            self.lastName = lastName

            self.uid = uid

            self.isAnonymousUser = isAnonymousUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gender = try container.decode(String.self, forKey: .gender)

            firstName = try container.decode(String.self, forKey: .firstName)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            mobile = try container.decode(String.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            lastName = try container.decode(String.self, forKey: .lastName)

            uid = try container.decode(Int.self, forKey: .uid)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
        }
    }
}
