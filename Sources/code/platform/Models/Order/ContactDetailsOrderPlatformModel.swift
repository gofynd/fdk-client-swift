

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ContactDetails
         Used By: Order
     */

    class ContactDetails: Codable {
        public var emails: [String]?

        public var phone: [PhoneDetails]?

        public enum CodingKeys: String, CodingKey {
            case emails

            case phone
        }

        public init(emails: [String]? = nil, phone: [PhoneDetails]? = nil) {
            self.emails = emails

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                emails = try container.decode([String].self, forKey: .emails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode([PhoneDetails].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(emails, forKey: .emails)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ContactDetails
         Used By: Order
     */

    class ContactDetails: Codable {
        public var emails: [String]?

        public var phone: [PhoneDetails]?

        public enum CodingKeys: String, CodingKey {
            case emails

            case phone
        }

        public init(emails: [String]? = nil, phone: [PhoneDetails]? = nil) {
            self.emails = emails

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                emails = try container.decode([String].self, forKey: .emails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode([PhoneDetails].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(emails, forKey: .emails)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
