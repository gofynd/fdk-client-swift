

import Foundation
public extension PlatformClient {
    /*
         Model: PhoneDetails
         Used By: Order
     */

    class PhoneDetails: Codable {
        public var countryCode: Int?

        public var mobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case mobileNumber = "mobile_number"
        }

        public init(countryCode: Int? = nil, mobileNumber: String? = nil) {
            self.countryCode = countryCode

            self.mobileNumber = mobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(Int.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
        }
    }
}
