

import Foundation
public extension ApplicationClient {
    /*
         Model: CountryMetaResponse
         Used By: Logistic
     */
    class CountryMetaResponse: Codable {
        public var isdCode: String?

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case isdCode = "isd_code"

            case countryCode = "country_code"
        }

        public init(countryCode: String? = nil, isdCode: String? = nil) {
            self.isdCode = isdCode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isdCode = try container.decode(String.self, forKey: .isdCode)

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

            try? container.encodeIfPresent(isdCode, forKey: .isdCode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
