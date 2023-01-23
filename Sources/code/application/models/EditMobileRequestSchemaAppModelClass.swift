

import Foundation
public extension ApplicationClient {
    /*
         Model: EditMobileRequestSchema
         Used By: User
     */
    class EditMobileRequestSchema: Codable {
        public var countryCode: String?

        public var phone: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phone
        }

        public init(countryCode: String? = nil, phone: String? = nil) {
            self.countryCode = countryCode

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
