

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var area: String?

        public var city: String

        public var pincode: Int

        public var countryCode: String

        public var addressCategory: String

        public var addressType: String

        public var updatedAt: String

        public var longitude: Double

        public var address2: String?

        public var contactPerson: String

        public var latitude: Double

        public var phone: String

        public var address1: String

        public var createdAt: String

        public var version: String?

        public var landmark: String?

        public var email: String?

        public var state: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case area

            case city

            case pincode

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case longitude

            case address2

            case contactPerson = "contact_person"

            case latitude

            case phone

            case address1

            case createdAt = "created_at"

            case version

            case landmark

            case email

            case state

            case country
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.area = area

            self.city = city

            self.pincode = pincode

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.address2 = address2

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.phone = phone

            self.address1 = address1

            self.createdAt = createdAt

            self.version = version

            self.landmark = landmark

            self.email = email

            self.state = state

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                version = try container.decode(String.self, forKey: .version)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var area: String?

        public var city: String

        public var pincode: Int

        public var countryCode: String

        public var addressCategory: String

        public var addressType: String

        public var updatedAt: String

        public var longitude: Double

        public var address2: String?

        public var contactPerson: String

        public var latitude: Double

        public var phone: String

        public var address1: String

        public var createdAt: String

        public var version: String?

        public var landmark: String?

        public var email: String?

        public var state: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case area

            case city

            case pincode

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case longitude

            case address2

            case contactPerson = "contact_person"

            case latitude

            case phone

            case address1

            case createdAt = "created_at"

            case version

            case landmark

            case email

            case state

            case country
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.area = area

            self.city = city

            self.pincode = pincode

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.address2 = address2

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.phone = phone

            self.address1 = address1

            self.createdAt = createdAt

            self.version = version

            self.landmark = landmark

            self.email = email

            self.state = state

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                version = try container.decode(String.self, forKey: .version)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
