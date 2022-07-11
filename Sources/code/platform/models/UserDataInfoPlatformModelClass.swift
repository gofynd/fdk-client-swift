

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var email: String

        public var isAnonymousUser: Bool

        public var avisUserId: String

        public var gender: String

        public var uid: Int

        public var firstName: String

        public var mobile: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case isAnonymousUser = "is_anonymous_user"

            case avisUserId = "avis_user_id"

            case gender

            case uid

            case firstName = "first_name"

            case mobile

            case lastName = "last_name"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.email = email

            self.isAnonymousUser = isAnonymousUser

            self.avisUserId = avisUserId

            self.gender = gender

            self.uid = uid

            self.firstName = firstName

            self.mobile = mobile

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            gender = try container.decode(String.self, forKey: .gender)

            uid = try container.decode(Int.self, forKey: .uid)

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(String.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
