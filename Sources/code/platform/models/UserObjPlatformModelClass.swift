

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var firstName: String

        public var isAnonymousUser: Bool

        public var mobile: String

        public var email: String?

        public var lastName: String

        public var uId: Int

        public var mongoUserId: String

        public var gender: String

        public var userOid: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case isAnonymousUser = "is_anonymous_user"

            case mobile

            case email

            case lastName = "last_name"

            case uId = "u_id"

            case mongoUserId = "mongo_user_id"

            case gender

            case userOid = "user_oid"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.firstName = firstName

            self.isAnonymousUser = isAnonymousUser

            self.mobile = mobile

            self.email = email

            self.lastName = lastName

            self.uId = uId

            self.mongoUserId = mongoUserId

            self.gender = gender

            self.userOid = userOid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            uId = try container.decode(Int.self, forKey: .uId)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            gender = try container.decode(String.self, forKey: .gender)

            userOid = try container.decode(String.self, forKey: .userOid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(userOid, forKey: .userOid)
        }
    }
}
