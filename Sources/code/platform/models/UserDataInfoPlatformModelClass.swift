

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Orders
     */

    class UserDataInfo: Codable {
        public var lastName: String

        public var mobile: String

        public var isAnonymousUser: Bool

        public var avisUserId: String

        public var firstName: String

        public var gender: String

        public var uid: Int

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case mobile

            case isAnonymousUser = "is_anonymous_user"

            case avisUserId = "avis_user_id"

            case firstName = "first_name"

            case gender

            case uid

            case email
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.lastName = lastName

            self.mobile = mobile

            self.isAnonymousUser = isAnonymousUser

            self.avisUserId = avisUserId

            self.firstName = firstName

            self.gender = gender

            self.uid = uid

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(String.self, forKey: .mobile)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            firstName = try container.decode(String.self, forKey: .firstName)

            gender = try container.decode(String.self, forKey: .gender)

            uid = try container.decode(Int.self, forKey: .uid)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
