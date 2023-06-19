

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: PhoneNumber
         Used By: Theme
     */
    class PhoneNumber: Codable {
        public var active: Bool

        public var primary: Bool

        public var verified: Bool

        public var phone: String

        public var countryCode: Int?

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case phone

            case countryCode = "country_code"
        }

        public init(active: Bool, countryCode: Int? = nil, phone: String, primary: Bool, verified: Bool) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.phone = phone

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            primary = try container.decode(Bool.self, forKey: .primary)

            verified = try container.decode(Bool.self, forKey: .verified)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                countryCode = try container.decode(Int.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
