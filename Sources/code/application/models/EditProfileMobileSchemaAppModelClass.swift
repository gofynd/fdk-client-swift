

import Foundation
public extension ApplicationClient {
    /*
         Model: EditProfileMobileSchema
         Used By: User
     */
    class EditProfileMobileSchema: Codable {
        public var phone: String?

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case countryCode = "country_code"
        }

        public init(countryCode: String? = nil, phone: String? = nil) {
            self.phone = phone

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(String.self, forKey: .phone)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
