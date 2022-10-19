

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var email: String

        public var isAnonymousUser: Bool

        public var gender: String

        public var mobile: String

        public var avisUserId: String

        public var lastName: String

        public var uid: Int

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case isAnonymousUser = "is_anonymous_user"

            case gender

            case mobile

            case avisUserId = "avis_user_id"

            case lastName = "last_name"

            case uid

            case firstName = "first_name"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.email = email

            self.isAnonymousUser = isAnonymousUser

            self.gender = gender

            self.mobile = mobile

            self.avisUserId = avisUserId

            self.lastName = lastName

            self.uid = uid

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            gender = try container.decode(String.self, forKey: .gender)

            mobile = try container.decode(String.self, forKey: .mobile)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            lastName = try container.decode(String.self, forKey: .lastName)

            uid = try container.decode(Int.self, forKey: .uid)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
