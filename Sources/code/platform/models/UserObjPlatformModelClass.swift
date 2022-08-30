

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var mobile: String

        public var lastName: String

        public var email: String?

        public var userOid: String

        public var firstName: String

        public var uId: Int

        public var gender: String

        public var mongoUserId: String

        public var isAnonymousUser: Bool

        public enum CodingKeys: String, CodingKey {
            case mobile

            case lastName = "last_name"

            case email

            case userOid = "user_oid"

            case firstName = "first_name"

            case uId = "u_id"

            case gender

            case mongoUserId = "mongo_user_id"

            case isAnonymousUser = "is_anonymous_user"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.mobile = mobile

            self.lastName = lastName

            self.email = email

            self.userOid = userOid

            self.firstName = firstName

            self.uId = uId

            self.gender = gender

            self.mongoUserId = mongoUserId

            self.isAnonymousUser = isAnonymousUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userOid = try container.decode(String.self, forKey: .userOid)

            firstName = try container.decode(String.self, forKey: .firstName)

            uId = try container.decode(Int.self, forKey: .uId)

            gender = try container.decode(String.self, forKey: .gender)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(email, forKey: .email)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
        }
    }
}
