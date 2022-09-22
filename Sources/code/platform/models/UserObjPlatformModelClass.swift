

import Foundation
public extension PlatformClient {
    /*
         Model: UserObj
         Used By: Order
     */

    class UserObj: Codable {
        public var uId: Int

        public var mobile: String

        public var isAnonymousUser: Bool

        public var lastName: String

        public var firstName: String

        public var userOid: String

        public var email: String?

        public var gender: String

        public var mongoUserId: String

        public enum CodingKeys: String, CodingKey {
            case uId = "u_id"

            case mobile

            case isAnonymousUser = "is_anonymous_user"

            case lastName = "last_name"

            case firstName = "first_name"

            case userOid = "user_oid"

            case email

            case gender

            case mongoUserId = "mongo_user_id"
        }

        public init(email: String? = nil, firstName: String, gender: String, isAnonymousUser: Bool, lastName: String, mobile: String, mongoUserId: String, userOid: String, uId: Int) {
            self.uId = uId

            self.mobile = mobile

            self.isAnonymousUser = isAnonymousUser

            self.lastName = lastName

            self.firstName = firstName

            self.userOid = userOid

            self.email = email

            self.gender = gender

            self.mongoUserId = mongoUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uId = try container.decode(Int.self, forKey: .uId)

            mobile = try container.decode(String.self, forKey: .mobile)

            isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            userOid = try container.decode(String.self, forKey: .userOid)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gender = try container.decode(String.self, forKey: .gender)

            mongoUserId = try container.decode(String.self, forKey: .mongoUserId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uId, forKey: .uId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(userOid, forKey: .userOid)

            try? container.encode(email, forKey: .email)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(mongoUserId, forKey: .mongoUserId)
        }
    }
}
