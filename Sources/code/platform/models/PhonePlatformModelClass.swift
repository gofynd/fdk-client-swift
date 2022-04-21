

import Foundation
public extension PlatformClient {
    /*
         Model: Phone
         Used By: Billing
     */

    class Phone: Codable {
        public var phoneNumber: String?

        public var phoneCountryCode: String?

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case phoneCountryCode = "phone_country_code"
        }

        public init(phoneCountryCode: String? = nil, phoneNumber: String? = nil) {
            self.phoneNumber = phoneNumber

            self.phoneCountryCode = phoneCountryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneCountryCode = try container.decode(String.self, forKey: .phoneCountryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(phoneCountryCode, forKey: .phoneCountryCode)
        }
    }
}
