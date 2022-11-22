

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var uid: Int

        public var mobile: String

        public var isAnonymousUser: Bool

        public var firstName: String

        public var email: String

        public var gender: String

        public var avisUserId: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case mobile

            case isAnonymousUser = "is_anonymous_user"

            case firstName = "first_name"

            case email

            case gender

            case avisUserId = "avis_user_id"

            case lastName = "last_name"
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.uid = uid

            self.mobile = mobile

            self.isAnonymousUser = isAnonymousUser

            self.firstName = firstName

            self.email = email

            self.gender = gender

            self.avisUserId = avisUserId

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            mobile = try container.decode(String.self, forKey: .mobile)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            firstName = try container.decode(String.self, forKey: .firstName)

            email = try container.decode(String.self, forKey: .email)

            gender = try container.decode(String.self, forKey: .gender)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
