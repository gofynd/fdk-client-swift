

import Foundation
public extension ApplicationClient {
    /*
         Model: ContactSchema
         Used By: Content
     */
    class ContactSchema: Codable {
        public var phone: PhoneSchema?

        public var email: EmailSchema?

        public enum CodingKeys: String, CodingKey {
            case phone

            case email
        }

        public init(email: EmailSchema? = nil, phone: PhoneSchema? = nil) {
            self.phone = phone

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(PhoneSchema.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(EmailSchema.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
