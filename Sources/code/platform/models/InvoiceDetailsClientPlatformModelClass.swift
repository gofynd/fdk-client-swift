

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsClient
         Used By: Billing
     */

    class InvoiceDetailsClient: Codable {
        public var addressLines: [String]?

        public var name: String?

        public var email: String?

        public var phone: String?

        public enum CodingKeys: String, CodingKey {
            case addressLines = "address_lines"

            case name

            case email

            case phone
        }

        public init(addressLines: [String]? = nil, email: String? = nil, name: String? = nil, phone: String? = nil) {
            self.addressLines = addressLines

            self.name = name

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressLines = try container.decode([String].self, forKey: .addressLines)

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
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressLines, forKey: .addressLines)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
