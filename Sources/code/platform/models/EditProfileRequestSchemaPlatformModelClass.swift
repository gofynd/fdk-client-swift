

import Foundation
public extension PlatformClient {
    /*
         Model: EditProfileRequestSchema
         Used By: User
     */

    class EditProfileRequestSchema: Codable {
        public var firstName: String?

        public var lastName: String?

        public var mobile: EditProfileMobileSchema?

        public var countryCode: String?

        public var email: String?

        public var gender: String?

        public var dob: String?

        public var profilePicUrl: String?

        public var androidHash: String?

        public var sender: String?

        public var registerToken: String?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case mobile

            case countryCode = "country_code"

            case email

            case gender

            case dob

            case profilePicUrl = "profile_pic_url"

            case androidHash = "android_hash"

            case sender

            case registerToken = "register_token"
        }

        public init(androidHash: String? = nil, countryCode: String? = nil, dob: String? = nil, email: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, mobile: EditProfileMobileSchema? = nil, profilePicUrl: String? = nil, registerToken: String? = nil, sender: String? = nil) {
            self.firstName = firstName

            self.lastName = lastName

            self.mobile = mobile

            self.countryCode = countryCode

            self.email = email

            self.gender = gender

            self.dob = dob

            self.profilePicUrl = profilePicUrl

            self.androidHash = androidHash

            self.sender = sender

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
                mobile = try container.decode(EditProfileMobileSchema.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dob = try container.decode(String.self, forKey: .dob)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                androidHash = try container.decode(String.self, forKey: .androidHash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sender = try container.decode(String.self, forKey: .sender)

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

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(dob, forKey: .dob)

            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)

            try? container.encodeIfPresent(androidHash, forKey: .androidHash)

            try? container.encodeIfPresent(sender, forKey: .sender)

            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
        }
    }
}
