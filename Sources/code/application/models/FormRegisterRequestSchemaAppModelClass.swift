

import Foundation
public extension ApplicationClient {
    /*
         Model: FormRegisterRequestSchema
         Used By: User
     */
    class FormRegisterRequestSchema: Codable {
        public var firstName: String?

        public var lastName: String?

        public var gender: String?

        public var email: String?

        public var password: String?

        public var phone: FormRegisterRequestSchemaPhone?

        public var registerToken: String?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case gender

            case email

            case password

            case phone

            case registerToken = "register_token"
        }

        public init(email: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, password: String? = nil, phone: FormRegisterRequestSchemaPhone? = nil, registerToken: String? = nil) {
            self.firstName = firstName

            self.lastName = lastName

            self.gender = gender

            self.email = email

            self.password = password

            self.phone = phone

            self.registerToken = registerToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(FormRegisterRequestSchemaPhone.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                registerToken = try container.decode(String.self, forKey: .registerToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
        }
    }
}
