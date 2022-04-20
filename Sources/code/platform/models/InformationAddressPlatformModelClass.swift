

import Foundation
public extension PlatformClient {
    /*
         Model: InformationAddress
         Used By: Configuration
     */

    class InformationAddress: Codable {
        public var loc: String?

        public var addressLine: [String]?

        public var phone: InformationPhone?

        public var city: String?

        public var country: String?

        public var pincode: Int?

        public enum CodingKeys: String, CodingKey {
            case loc

            case addressLine = "address_line"

            case phone

            case city

            case country

            case pincode
        }

        public init(addressLine: [String]? = nil, city: String? = nil, country: String? = nil, loc: String? = nil, phone: InformationPhone? = nil, pincode: Int? = nil) {
            self.loc = loc

            self.addressLine = addressLine

            self.phone = phone

            self.city = city

            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loc = try container.decode(String.self, forKey: .loc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressLine = try container.decode([String].self, forKey: .addressLine)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(InformationPhone.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loc, forKey: .loc)

            try? container.encodeIfPresent(addressLine, forKey: .addressLine)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
