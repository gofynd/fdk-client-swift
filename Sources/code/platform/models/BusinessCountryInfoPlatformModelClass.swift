import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BusinessCountryInfo
         Used By: CompanyProfile
     */

    class BusinessCountryInfo: Codable {
        public var country: String?

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case countryCode = "country_code"
        }

        public init(country: String?, countryCode: String?) {
            self.country = country

            self.countryCode = countryCode
        }

        public func duplicate() -> BusinessCountryInfo {
            let dict = self.dictionary!
            let copy = BusinessCountryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

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

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
