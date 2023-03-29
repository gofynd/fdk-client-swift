

import Foundation
public extension PlatformClient {
    /*
         Model: InvoicesDataClient
         Used By: Billing
     */

    class InvoicesDataClient: Codable {
        public var name: String?

        public var email: String?

        public var phone: String?

        public var addressLines: [String]?

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case phone

            case addressLines = "address_lines"
        }

        public init(addressLines: [String]? = nil, email: String? = nil, name: String? = nil, phone: String? = nil) {
            self.name = name

            self.email = email

            self.phone = phone

            self.addressLines = addressLines
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                addressLines = try container.decode([String].self, forKey: .addressLines)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(addressLines, forKey: .addressLines)
        }
    }
}
