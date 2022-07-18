

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var mobile: String

        public var firstName: String

        public var isAnonymousUser: Bool

        public var avisUserId: String

        public var email: String

        public var uid: Int

        public var gender: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case firstName = "first_name"

            case isAnonymousUser = "is_anonymous_user"

            case avisUserId = "avis_user_id"

            case email

            case uid

            case gender

            case lastName = "last_name"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.mobile = mobile

            self.firstName = firstName

            self.isAnonymousUser = isAnonymousUser

            self.avisUserId = avisUserId

            self.email = email

            self.uid = uid

            self.gender = gender

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            email = try container.decode(String.self, forKey: .email)

            uid = try container.decode(Int.self, forKey: .uid)

            gender = try container.decode(String.self, forKey: .gender)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
