

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentHandOverCustomerContact
         Used By: Order
     */

    class ShipmentHandOverCustomerContact: Codable {
        public var phone: String?

        public var createdAt: String

        public var email: String?

        public var contactPerson: String

        public var version: String

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case createdAt = "created_at"

            case email

            case contactPerson = "contact_person"

            case version

            case updatedAt = "updated_at"
        }

        public init(contactPerson: String, createdAt: String, email: String? = nil, phone: String? = nil, updatedAt: String, version: String) {
            self.phone = phone

            self.createdAt = createdAt

            self.email = email

            self.contactPerson = contactPerson

            self.version = version

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            version = try container.decode(String.self, forKey: .version)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
