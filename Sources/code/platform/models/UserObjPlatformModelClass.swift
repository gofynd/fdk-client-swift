

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var mobile: String

        public var userOid: String

        public var isAnonymousUser: Bool

        public var gender: String

        public var lastName: String

        public var email: String?

        public var mongoUserId: String

        public var firstName: String

        public var uId: Int

        public enum CodingKeys: String, CodingKey {
            case mobile

            case userOid = "user_oid"

            case isAnonymousUser = "is_anonymous_user"

            case gender

            case lastName = "last_name"

            case email

            case mongoUserId = "mongo_user_id"

            case firstName = "first_name"

            case uId = "u_id"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.mobile = mobile

            self.userOid = userOid

            self.isAnonymousUser = isAnonymousUser

            self.gender = gender

            self.lastName = lastName

            self.email = email

            self.mongoUserId = mongoUserId

            self.firstName = firstName

            self.uId = uId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            userOid = try container.decode(String.self, forKey: .userOid)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            gender = try container.decode(String.self, forKey: .gender)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)

            firstName = try container.decode(String.self, forKey: .firstName)

            uId = try container.decode(Int.self, forKey: .uId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(email, forKey: .email)

            try? container.encode(mongoUserId, forKey: .mongoUserId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(uId, forKey: .uId)
        }
    }
}
