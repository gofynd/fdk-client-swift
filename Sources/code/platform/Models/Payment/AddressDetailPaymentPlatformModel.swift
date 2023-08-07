

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: AddressDetail
         Used By: Payment
     */

    class AddressDetail: Codable {
        public var countryIsoCode: String

        public var googleMapPoint: [String: Any]?

        public var country: String

        public var email: String?

        public var areaCode: String

        public var city: String

        public var phone: String

        public var expireAt: String?

        public var address: String

        public var gAddressId: String

        public var tags: [[String: Any]]?

        public var name: String

        public var state: String

        public var landmark: String?

        public var area: String

        public var areaCodeSlug: String

        public var addressType: String

        public var countryPhoneCode: String

        public var geoLocation: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case countryIsoCode = "country_iso_code"

            case googleMapPoint = "google_map_point"

            case country

            case email

            case areaCode = "area_code"

            case city

            case phone

            case expireAt = "expire_at"

            case address

            case gAddressId = "g_address_id"

            case tags

            case name

            case state

            case landmark

            case area

            case areaCodeSlug = "area_code_slug"

            case addressType = "address_type"

            case countryPhoneCode = "country_phone_code"

            case geoLocation = "geo_location"
        }

        public init(address: String, addressType: String, area: String, areaCode: String, areaCodeSlug: String, city: String, country: String, countryIsoCode: String, countryPhoneCode: String, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: [String: Any]? = nil, gAddressId: String, landmark: String? = nil, name: String, phone: String, state: String, tags: [[String: Any]]? = nil) {
            self.countryIsoCode = countryIsoCode

            self.googleMapPoint = googleMapPoint

            self.country = country

            self.email = email

            self.areaCode = areaCode

            self.city = city

            self.phone = phone

            self.expireAt = expireAt

            self.address = address

            self.gAddressId = gAddressId

            self.tags = tags

            self.name = name

            self.state = state

            self.landmark = landmark

            self.area = area

            self.areaCodeSlug = areaCodeSlug

            self.addressType = addressType

            self.countryPhoneCode = countryPhoneCode

            self.geoLocation = geoLocation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            do {
                googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            areaCode = try container.decode(String.self, forKey: .areaCode)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                expireAt = try container.decode(String.self, forKey: .expireAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            gAddressId = try container.decode(String.self, forKey: .gAddressId)

            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            area = try container.decode(String.self, forKey: .area)

            areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)

            do {
                geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(gAddressId, forKey: .gAddressId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: AddressDetail
         Used By: Payment
     */

    class AddressDetail: Codable {
        public var countryIsoCode: String

        public var googleMapPoint: [String: Any]?

        public var country: String

        public var email: String?

        public var areaCode: String

        public var city: String

        public var phone: String

        public var expireAt: String?

        public var address: String

        public var gAddressId: String

        public var tags: [[String: Any]]?

        public var name: String

        public var state: String

        public var landmark: String?

        public var area: String

        public var areaCodeSlug: String

        public var addressType: String

        public var countryPhoneCode: String

        public var geoLocation: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case countryIsoCode = "country_iso_code"

            case googleMapPoint = "google_map_point"

            case country

            case email

            case areaCode = "area_code"

            case city

            case phone

            case expireAt = "expire_at"

            case address

            case gAddressId = "g_address_id"

            case tags

            case name

            case state

            case landmark

            case area

            case areaCodeSlug = "area_code_slug"

            case addressType = "address_type"

            case countryPhoneCode = "country_phone_code"

            case geoLocation = "geo_location"
        }

        public init(address: String, addressType: String, area: String, areaCode: String, areaCodeSlug: String, city: String, country: String, countryIsoCode: String, countryPhoneCode: String, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: [String: Any]? = nil, gAddressId: String, landmark: String? = nil, name: String, phone: String, state: String, tags: [[String: Any]]? = nil) {
            self.countryIsoCode = countryIsoCode

            self.googleMapPoint = googleMapPoint

            self.country = country

            self.email = email

            self.areaCode = areaCode

            self.city = city

            self.phone = phone

            self.expireAt = expireAt

            self.address = address

            self.gAddressId = gAddressId

            self.tags = tags

            self.name = name

            self.state = state

            self.landmark = landmark

            self.area = area

            self.areaCodeSlug = areaCodeSlug

            self.addressType = addressType

            self.countryPhoneCode = countryPhoneCode

            self.geoLocation = geoLocation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)

            do {
                googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            areaCode = try container.decode(String.self, forKey: .areaCode)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                expireAt = try container.decode(String.self, forKey: .expireAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            gAddressId = try container.decode(String.self, forKey: .gAddressId)

            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            area = try container.decode(String.self, forKey: .area)

            areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)

            do {
                geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)

            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(gAddressId, forKey: .gAddressId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        }
    }
}
