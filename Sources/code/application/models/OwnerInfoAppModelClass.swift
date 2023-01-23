

import Foundation
public extension ApplicationClient {
    /*
         Model: OwnerInfo
         Used By: Configuration
     */
    class OwnerInfo: Codable {
        public var id: String?

        public var emails: [UserEmail]?

        public var phoneNumbers: [UserPhoneNumber]?

        public var firstName: String?

        public var lastName: String?

        public var profilePic: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case emails

            case phoneNumbers = "phone_numbers"

            case firstName = "first_name"

            case lastName = "last_name"

            case profilePic = "profile_pic"
        }

        public init(emails: [UserEmail]? = nil, firstName: String? = nil, lastName: String? = nil, phoneNumbers: [UserPhoneNumber]? = nil, profilePic: String? = nil, id: String? = nil) {
            self.id = id

            self.emails = emails

            self.phoneNumbers = phoneNumbers

            self.firstName = firstName

            self.lastName = lastName

            self.profilePic = profilePic
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emails = try container.decode([UserEmail].self, forKey: .emails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneNumbers = try container.decode([UserPhoneNumber].self, forKey: .phoneNumbers)

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
                profilePic = try container.decode(String.self, forKey: .profilePic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(emails, forKey: .emails)

            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(profilePic, forKey: .profilePic)
        }
    }
}
