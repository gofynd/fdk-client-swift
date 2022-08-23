

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var firstName: String

        public var email: String?

        public var mongoUserId: String

        public var userOid: String

        public var mobile: String

        public var isAnonymousUser: Bool

        public var gender: String

        public var uId: Int

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case email

            case mongoUserId = "mongo_user_id"

            case userOid = "user_oid"

            case mobile

            case isAnonymousUser = "is_anonymous_user"

            case gender

            case uId = "u_id"

            case lastName = "last_name"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.firstName = firstName

            self.email = email

            self.mongoUserId = mongoUserId

            self.userOid = userOid

            self.mobile = mobile

            self.isAnonymousUser = isAnonymousUser

            self.gender = gender

            self.uId = uId

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            userOid = try container.decode(String.self, forKey: .userOid)

            mobile = try container.decode(String.self, forKey: .mobile)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            gender = try container.decode(String.self, forKey: .gender)

            uId = try container.decode(Int.self, forKey: .uId)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(email, forKey: .email)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
