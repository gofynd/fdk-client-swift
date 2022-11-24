

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var mobile: String

        public var gender: String

        public var isAnonymousUser: Bool

        public var avisUserId: String

        public var lastName: String

        public var uid: Int

        public var firstName: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case gender

            case isAnonymousUser = "is_anonymous_user"

            case avisUserId = "avis_user_id"

            case lastName = "last_name"

            case uid

            case firstName = "first_name"

            case email
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.mobile = mobile

            self.gender = gender

            self.isAnonymousUser = isAnonymousUser

            self.avisUserId = avisUserId

            self.lastName = lastName

            self.uid = uid

            self.firstName = firstName

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            gender = try container.decode(String.self, forKey: .gender)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            lastName = try container.decode(String.self, forKey: .lastName)

            uid = try container.decode(Int.self, forKey: .uid)

            firstName = try container.decode(String.self, forKey: .firstName)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
