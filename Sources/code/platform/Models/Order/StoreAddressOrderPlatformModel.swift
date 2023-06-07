

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var country: String

        public var contactPerson: String

        public var countryCode: String

        public var addressCategory: String

        public var address1: String

        public var phone: String

        public var email: String?

        public var state: String

        public var landmark: String?

        public var version: String?

        public var area: String?

        public var pincode: Int

        public var address2: String?

        public var addressType: String

        public var updatedAt: String

        public var longitude: Double

        public var city: String

        public var latitude: Double

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case country

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case address1

            case phone

            case email

            case state

            case landmark

            case version

            case area

            case pincode

            case address2

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case longitude

            case city

            case latitude

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.country = country

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.address1 = address1

            self.phone = phone

            self.email = email

            self.state = state

            self.landmark = landmark

            self.version = version

            self.area = area

            self.pincode = pincode

            self.address2 = address2

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.city = city

            self.latitude = latitude

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
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

        public var contactPerson: String

        public var countryCode: String

        public var addressCategory: String

        public var address1: String

        public var phone: String

        public var email: String?

        public var state: String

        public var landmark: String?

        public var version: String?

        public var area: String?

        public var pincode: Int

        public var address2: String?

        public var addressType: String

        public var updatedAt: String

        public var longitude: Double

        public var city: String

        public var latitude: Double

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case country

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case address1

            case phone

            case email

            case state

            case landmark

            case version

            case area

            case pincode

            case address2

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case longitude

            case city

            case latitude

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.country = country

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.address1 = address1

            self.phone = phone

            self.email = email

            self.state = state

            self.landmark = landmark

            self.version = version

            self.area = area

            self.pincode = pincode

            self.address2 = address2

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.city = city

            self.latitude = latitude

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
