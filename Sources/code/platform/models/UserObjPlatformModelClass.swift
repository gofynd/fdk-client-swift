

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var isAnonymousUser: Bool

        public var gender: String

        public var userOid: String

        public var uId: Int

        public var email: String?

        public var firstName: String

        public var mobile: String

        public var lastName: String

        public var mongoUserId: String

        public enum CodingKeys: String, CodingKey {
            case isAnonymousUser = "is_anonymous_user"

            case gender

            case userOid = "user_oid"

            case uId = "u_id"

            case email

            case firstName = "first_name"

            case mobile

            case lastName = "last_name"

            case mongoUserId = "mongo_user_id"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.isAnonymousUser = isAnonymousUser

            self.gender = gender

            self.userOid = userOid

            self.uId = uId

            self.email = email

            self.firstName = firstName

            self.mobile = mobile

            self.lastName = lastName

            self.mongoUserId = mongoUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            gender = try container.decode(String.self, forKey: .gender)

            userOid = try container.decode(String.self, forKey: .userOid)

            uId = try container.decode(Int.self, forKey: .uId)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(String.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(mongoUserId, forKey: .mongoUserId)
        }
    }
}
