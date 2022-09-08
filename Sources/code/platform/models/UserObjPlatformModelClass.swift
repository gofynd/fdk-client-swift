

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var gender: String

        public var firstName: String

        public var email: String?

        public var userOid: String

        public var mongoUserId: String

        public var isAnonymousUser: Bool

        public var mobile: String

        public var uId: Int

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case gender

            case firstName = "first_name"

            case email

            case userOid = "user_oid"

            case mongoUserId = "mongo_user_id"

            case isAnonymousUser = "is_anonymous_user"

            case mobile

            case uId = "u_id"

            case lastName = "last_name"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.gender = gender

            self.firstName = firstName

            self.email = email

            self.userOid = userOid

            self.mongoUserId = mongoUserId

            self.isAnonymousUser = isAnonymousUser

            self.mobile = mobile

            self.uId = uId

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gender = try container.decode(String.self, forKey: .gender)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userOid = try container.decode(String.self, forKey: .userOid)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            mobile = try container.decode(String.self, forKey: .mobile)

            uId = try container.decode(Int.self, forKey: .uId)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(email, forKey: .email)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
