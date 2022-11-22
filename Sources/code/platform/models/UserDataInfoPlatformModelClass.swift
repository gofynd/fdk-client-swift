

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var uid: Int

        public var isAnonymousUser: Bool

        public var mobile: String

        public var avisUserId: String

        public var email: String

        public var lastName: String

        public var firstName: String

        public var gender: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case isAnonymousUser = "is_anonymous_user"

            case mobile

            case avisUserId = "avis_user_id"

            case email

            case lastName = "last_name"

            case firstName = "first_name"

            case gender
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.uid = uid

            self.isAnonymousUser = isAnonymousUser

            self.mobile = mobile

            self.avisUserId = avisUserId

            self.email = email

            self.lastName = lastName

            self.firstName = firstName

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            mobile = try container.decode(String.self, forKey: .mobile)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            email = try container.decode(String.self, forKey: .email)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            gender = try container.decode(String.self, forKey: .gender)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(gender, forKey: .gender)
        }
    }
}
