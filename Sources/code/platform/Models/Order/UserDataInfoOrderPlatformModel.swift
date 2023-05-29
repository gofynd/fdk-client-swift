

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var lastName: String

        public var firstName: String

        public var gender: String

        public var avisUserId: String

        public var email: String

        public var isAnonymousUser: Bool

        public var mobile: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case firstName = "first_name"

            case gender

            case avisUserId = "avis_user_id"

            case email

            case isAnonymousUser = "is_anonymous_user"

            case mobile

            case uid
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.lastName = lastName

            self.firstName = firstName

            self.gender = gender

            self.avisUserId = avisUserId

            self.email = email

            self.isAnonymousUser = isAnonymousUser

            self.mobile = mobile

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            gender = try container.decode(String.self, forKey: .gender)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            email = try container.decode(String.self, forKey: .email)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            mobile = try container.decode(String.self, forKey: .mobile)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var lastName: String

        public var firstName: String

        public var gender: String

        public var avisUserId: String

        public var email: String

        public var isAnonymousUser: Bool

        public var mobile: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case firstName = "first_name"

            case gender

            case avisUserId = "avis_user_id"

            case email

            case isAnonymousUser = "is_anonymous_user"

            case mobile

            case uid
        }

        public init(avisUserId: String, email: String, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, uid: Int) {
            self.lastName = lastName

            self.firstName = firstName

            self.gender = gender

            self.avisUserId = avisUserId

            self.email = email

            self.isAnonymousUser = isAnonymousUser

            self.mobile = mobile

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            gender = try container.decode(String.self, forKey: .gender)

            avisUserId = try container.decode(String.self, forKey: .avisUserId)

            email = try container.decode(String.self, forKey: .email)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            mobile = try container.decode(String.self, forKey: .mobile)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
