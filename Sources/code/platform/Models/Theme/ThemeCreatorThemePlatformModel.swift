

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ThemeCreator
         Used By: Theme
     */

    class ThemeCreator: Codable {
        public var id: String

        public var gender: String?

        public var accountType: String?

        public var active: Bool

        public var firstName: String?

        public var lastName: String?

        public var phoneNumbers: [PhoneNumber]?

        public var emails: [Email]

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case gender

            case accountType = "account_type"

            case active

            case firstName = "first_name"

            case lastName = "last_name"

            case phoneNumbers = "phone_numbers"

            case emails
        }

        public init(accountType: String? = nil, active: Bool, emails: [Email], firstName: String? = nil, gender: String? = nil, lastName: String? = nil, phoneNumbers: [PhoneNumber]? = nil, id: String) {
            self.id = id

            self.gender = gender

            self.accountType = accountType

            self.active = active

            self.firstName = firstName

            self.lastName = lastName

            self.phoneNumbers = phoneNumbers

            self.emails = emails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountType = try container.decode(String.self, forKey: .accountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            active = try container.decode(Bool.self, forKey: .active)

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
                phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emails = try container.decode([Email].self, forKey: .emails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)

            try? container.encodeIfPresent(emails, forKey: .emails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ThemeCreator
         Used By: Theme
     */

    class ThemeCreator: Codable {
        public var id: String

        public var gender: String?

        public var accountType: String?

        public var active: Bool

        public var firstName: String?

        public var lastName: String?

        public var phoneNumbers: [PhoneNumber]?

        public var emails: [Email]

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case gender

            case accountType = "account_type"

            case active

            case firstName = "first_name"

            case lastName = "last_name"

            case phoneNumbers = "phone_numbers"

            case emails
        }

        public init(accountType: String? = nil, active: Bool, emails: [Email], firstName: String? = nil, gender: String? = nil, lastName: String? = nil, phoneNumbers: [PhoneNumber]? = nil, id: String) {
            self.id = id

            self.gender = gender

            self.accountType = accountType

            self.active = active

            self.firstName = firstName

            self.lastName = lastName

            self.phoneNumbers = phoneNumbers

            self.emails = emails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountType = try container.decode(String.self, forKey: .accountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            active = try container.decode(Bool.self, forKey: .active)

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
                phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emails = try container.decode([Email].self, forKey: .emails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)

            try? container.encodeIfPresent(emails, forKey: .emails)
        }
    }
}
