

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ShippingAddress
         Used By: Cart
     */

    class ShippingAddress: Codable {
        public var addressType: String?

        public var country: String?

        public var area: String?

        public var countryCode: String?

        public var landmark: String?

        public var countryIsoCode: String?

        public var meta: [String: Any]?

        public var state: String?

        public var phone: Int?

        public var countryPhoneCode: String?

        public var areaCode: String

        public var areaCodeSlug: String?

        public var address: String?

        public var name: String?

        public var pincode: Int?

        public var city: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case country

            case area

            case countryCode = "country_code"

            case landmark

            case countryIsoCode = "country_iso_code"

            case meta

            case state

            case phone

            case countryPhoneCode = "country_phone_code"

            case areaCode = "area_code"

            case areaCodeSlug = "area_code_slug"

            case address

            case name

            case pincode

            case city

            case email
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, landmark: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: Int? = nil, pincode: Int? = nil, state: String? = nil) {
            self.addressType = addressType

            self.country = country

            self.area = area

            self.countryCode = countryCode

            self.landmark = landmark

            self.countryIsoCode = countryIsoCode

            self.meta = meta

            self.state = state

            self.phone = phone

            self.countryPhoneCode = countryPhoneCode

            self.areaCode = areaCode

            self.areaCodeSlug = areaCodeSlug

            self.address = address

            self.name = name

            self.pincode = pincode

            self.city = city

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

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
                area = try container.decode(String.self, forKey: .area)

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
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                phone = try container.decode(Int.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            areaCode = try container.decode(String.self, forKey: .areaCode)

            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

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
                name = try container.decode(String.self, forKey: .name)

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
                city = try container.decode(String.self, forKey: .city)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encode(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
