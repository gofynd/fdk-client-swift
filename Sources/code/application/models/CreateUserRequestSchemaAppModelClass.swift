

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateUserRequestSchema
         Used By: User
     */
    class CreateUserRequestSchema: Codable {
        public var phoneNumber: String

        public var email: String?

        public var firstName: String?

        public var lastName: String?

        public var gender: String?

        public var username: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case email

            case firstName = "first_name"

            case lastName = "last_name"

            case gender

            case username

            case meta
        }

        public init(email: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, meta: [String: Any]? = nil, phoneNumber: String, username: String) {
            self.phoneNumber = phoneNumber

            self.email = email

            self.firstName = firstName

            self.lastName = lastName

            self.gender = gender

            self.username = username

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            username = try container.decode(String.self, forKey: .username)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
