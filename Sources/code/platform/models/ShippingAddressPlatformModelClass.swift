

import Foundation
public extension PlatformClient {
    /*
         Model: ShippingAddress
         Used By: Cart
     */

    class ShippingAddress: Codable {
        public var phone: Int?

        public var state: String?

        public var address: String?

        public var city: String?

        public var addressType: String?

        public var email: String?

        public var countryCode: String?

        public var area: String?

        public var pincode: Int?

        public var areaCodeSlug: String?

        public var country: String?

        public var areaCode: String

        public var meta: [String: Any]?

        public var name: String?

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case state

            case address

            case city

            case addressType = "address_type"

            case email

            case countryCode = "country_code"

            case area

            case pincode

            case areaCodeSlug = "area_code_slug"

            case country

            case areaCode = "area_code"

            case meta

            case name

            case landmark
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, email: String? = nil, landmark: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: Int? = nil, pincode: Int? = nil, state: String? = nil) {
            self.phone = phone

            self.state = state

            self.address = address

            self.city = city

            self.addressType = addressType

            self.email = email

            self.countryCode = countryCode

            self.area = area

            self.pincode = pincode

            self.areaCodeSlug = areaCodeSlug

            self.country = country

            self.areaCode = areaCode

            self.meta = meta

            self.name = name

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(Int.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

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
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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

            do {
                area = try container.decode(String.self, forKey: .area)

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

            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

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

            areaCode = try container.decode(String.self, forKey: .areaCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encode(country, forKey: .country)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
