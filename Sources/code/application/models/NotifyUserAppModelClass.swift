

import Foundation
public extension ApplicationClient {
    /*
         Model: NotifyUser
         Used By: Lead
     */
    class NotifyUser: Codable {
        public var countryCode: String

        public var phoneNumber: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phoneNumber = "phone_number"
        }

        public init(countryCode: String, phoneNumber: String) {
            self.countryCode = countryCode

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
