import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ContactDetails
         Used By: CompanyProfile
     */

    class ContactDetails: Codable {
        public var phone: [SellerPhoneNumber]?

        public var emails: [String]?

        public enum CodingKeys: String, CodingKey {
            case phone

            case emails
        }

        public init(emails: [String]?, phone: [SellerPhoneNumber]?) {
            self.phone = phone

            self.emails = emails
        }

        public func duplicate() -> ContactDetails {
            let dict = self.dictionary!
            let copy = ContactDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode([SellerPhoneNumber].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emails = try container.decode([String].self, forKey: .emails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(emails, forKey: .emails)
        }
    }
}
