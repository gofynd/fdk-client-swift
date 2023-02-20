

import Foundation
public extension PlatformClient {
    /*
         Model: BusinessCountryInfo
         Used By: CompanyProfile
     */

    class BusinessCountryInfo: Codable {
        public var countryCode: String?

        public var country: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case country
        }

        public init(country: String? = nil, countryCode: String? = nil) {
            self.countryCode = countryCode

            self.country = country
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
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
