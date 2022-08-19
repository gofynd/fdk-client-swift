

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var mobile: String

        public var firstName: String

        public var email: String?

        public var mongoUserId: String

        public var lastName: String

        public var isAnonymousUser: Bool

        public var userOid: String

        public var uId: Int

        public var gender: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case firstName = "first_name"

            case email

            case mongoUserId = "mongo_user_id"

            case lastName = "last_name"

            case isAnonymousUser = "is_anonymous_user"

            case userOid = "user_oid"

            case uId = "u_id"

            case gender
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.mobile = mobile

            self.firstName = firstName

            self.email = email

            self.mongoUserId = mongoUserId

            self.lastName = lastName

            self.isAnonymousUser = isAnonymousUser

            self.userOid = userOid

            self.uId = uId

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            lastName = try container.decode(String.self, forKey: .lastName)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            userOid = try container.decode(String.self, forKey: .userOid)

            uId = try container.decode(Int.self, forKey: .uId)

            gender = try container.decode(String.self, forKey: .gender)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(email, forKey: .email)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encode(gender, forKey: .gender)
        }
    }
}
