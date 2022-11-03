

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var avisUserId: String

        public var firstName: String

        public var uid: Int

        public var email: String

        public var isAnonymousUser: Bool

        public var gender: String

        public var mobile: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case avisUserId = "avis_user_id"

            case firstName = "first_name"

            case uid

            case email

            case isAnonymousUser = "is_anonymous_user"

            case gender

            case mobile

            case lastName = "last_name"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.avisUserId = avisUserId

            self.firstName = firstName

            self.uid = uid

            self.email = email

            self.isAnonymousUser = isAnonymousUser

            self.gender = gender

            self.mobile = mobile

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            firstName = try container.decode(String.self, forKey: .firstName)

            uid = try container.decode(Int.self, forKey: .uid)

            email = try container.decode(String.self, forKey: .email)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            gender = try container.decode(String.self, forKey: .gender)

            mobile = try container.decode(String.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
