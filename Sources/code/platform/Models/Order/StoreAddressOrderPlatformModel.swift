

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var country: String

        public var pincode: Int

        public var createdAt: String

        public var countryCode: String

        public var address1: String

        public var phone: String

        public var addressType: String

        public var longitude: Double

        public var latitude: Double

        public var email: String?

        public var addressCategory: String

        public var address2: String?

        public var area: String?

        public var contactPerson: String

        public var version: String?

        public var city: String

        public var updatedAt: String

        public var landmark: String?

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode

            case createdAt = "created_at"

            case countryCode = "country_code"

            case address1

            case phone

            case addressType = "address_type"

            case longitude

            case latitude

            case email

            case addressCategory = "address_category"

            case address2

            case area

            case contactPerson = "contact_person"

            case version

            case city

            case updatedAt = "updated_at"

            case landmark

            case state
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.country = country

            self.pincode = pincode

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.address1 = address1

            self.phone = phone

            self.addressType = addressType

            self.longitude = longitude

            self.latitude = latitude

            self.email = email

            self.addressCategory = addressCategory

            self.address2 = address2

            self.area = area

            self.contactPerson = contactPerson

            self.version = version

            self.city = city

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var country: String

        public var pincode: Int

        public var createdAt: String

        public var countryCode: String

        public var address1: String

        public var phone: String

        public var addressType: String

        public var longitude: Double

        public var latitude: Double

        public var email: String?

        public var addressCategory: String

        public var address2: String?

        public var area: String?

        public var contactPerson: String

        public var version: String?

        public var city: String

        public var updatedAt: String

        public var landmark: String?

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode

            case createdAt = "created_at"

            case countryCode = "country_code"

            case address1

            case phone

            case addressType = "address_type"

            case longitude

            case latitude

            case email

            case addressCategory = "address_category"

            case address2

            case area

            case contactPerson = "contact_person"

            case version

            case city

            case updatedAt = "updated_at"

            case landmark

            case state
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.country = country

            self.pincode = pincode

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.address1 = address1

            self.phone = phone

            self.addressType = addressType

            self.longitude = longitude

            self.latitude = latitude

            self.email = email

            self.addressCategory = addressCategory

            self.address2 = address2

            self.area = area

            self.contactPerson = contactPerson

            self.version = version

            self.city = city

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
