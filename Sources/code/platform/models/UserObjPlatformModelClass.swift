

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var firstName: String

        public var mongoUserId: String

        public var uId: Int

        public var email: String?

        public var lastName: String

        public var userOid: String

        public var mobile: String

        public var gender: String

        public var isAnonymousUser: Bool

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case mongoUserId = "mongo_user_id"

            case uId = "u_id"

            case email

            case lastName = "last_name"

            case userOid = "user_oid"

            case mobile

            case gender

            case isAnonymousUser = "is_anonymous_user"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.firstName = firstName

            self.mongoUserId = mongoUserId

            self.uId = uId

            self.email = email

            self.lastName = lastName

            self.userOid = userOid

            self.mobile = mobile

            self.gender = gender

            self.isAnonymousUser = isAnonymousUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            uId = try container.decode(Int.self, forKey: .uId)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            userOid = try container.decode(String.self, forKey: .userOid)

            mobile = try container.decode(String.self, forKey: .mobile)

            gender = try container.decode(String.self, forKey: .gender)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
        }
    }
}
