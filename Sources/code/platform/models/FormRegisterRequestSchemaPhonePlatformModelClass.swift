

import Foundation
public extension PlatformClient {
    /*
         Model: FormRegisterRequestSchemaPhone
         Used By: User
     */

    class FormRegisterRequestSchemaPhone: Codable {
        public var countryCode: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case mobile
        }

        public init(countryCode: String? = nil, mobile: String? = nil) {
            self.countryCode = countryCode

            self.mobile = mobile
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
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
