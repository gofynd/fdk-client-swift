

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataInfo
         Used By: Order
     */

    class UserDataInfo: Codable {
        public var avisUserId: String?

        public var mobile: String?

        public var lastName: String?

        public var gender: String?

        public var name: String?

        public var email: String?

        public var uid: Int?

        public var isAnonymousUser: Bool?

        public var firstName: String?

        public enum CodingKeys: String, CodingKey {
            case avisUserId = "avis_user_id"

            case mobile

            case lastName = "last_name"

            case gender

            case name

            case email

            case uid

            case isAnonymousUser = "is_anonymous_user"

            case firstName = "first_name"
        }

        public init(avisUserId: String? = nil, email: String? = nil, firstName: String? = nil, gender: String? = nil, isAnonymousUser: Bool? = nil, lastName: String? = nil, mobile: String? = nil, name: String? = nil, uid: Int? = nil) {
            self.avisUserId = avisUserId

            self.mobile = mobile

            self.lastName = lastName

            self.gender = gender

            self.name = name

            self.email = email

            self.uid = uid

            self.isAnonymousUser = isAnonymousUser

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                avisUserId = try container.decode(String.self, forKey: .avisUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
