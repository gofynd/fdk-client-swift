

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var mobile: String

        public var gender: String

        public var isAnonymousUser: Bool

        public var email: String

        public var uid: Int

        public var lastName: String

        public var firstName: String

        public var avisUserId: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case gender

            case isAnonymousUser = "is_anonymous_user"

            case email

            case uid

            case lastName = "last_name"

            case firstName = "first_name"

            case avisUserId = "avis_user_id"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.mobile = mobile

            self.gender = gender

            self.isAnonymousUser = isAnonymousUser

            self.email = email

            self.uid = uid

            self.lastName = lastName

            self.firstName = firstName

            self.avisUserId = avisUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            gender = try container.decode(String.self, forKey: .gender)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            email = try container.decode(String.self, forKey: .email)

            uid = try container.decode(Int.self, forKey: .uid)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)
        }
    }
}
