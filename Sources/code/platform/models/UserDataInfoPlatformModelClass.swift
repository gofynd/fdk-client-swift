

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var firstName: String

        public var email: String

        public var uid: Int

        public var mobile: String

        public var avisUserId: String

        public var lastName: String

        public var gender: String

        public var isAnonymousUser: Bool

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case email

            case uid

            case mobile

            case avisUserId = "avis_user_id"

            case lastName = "last_name"

            case gender

            case isAnonymousUser = "is_anonymous_user"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.firstName = firstName

            self.email = email

            self.uid = uid

            self.mobile = mobile

            self.avisUserId = avisUserId

            self.lastName = lastName

            self.gender = gender

            self.isAnonymousUser = isAnonymousUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            email = try container.decode(String.self, forKey: .email)

            uid = try container.decode(Int.self, forKey: .uid)

            mobile = try container.decode(String.self, forKey: .mobile)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            lastName = try container.decode(String.self, forKey: .lastName)

            gender = try container.decode(String.self, forKey: .gender)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
        }
    }
}
