

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var landmark: String?

        public var city: String

        public var state: String

        public var updatedAt: String

        public var area: String?

        public var latitude: Double

        public var address1: String

        public var version: String?

        public var longitude: Double

        public var address2: String?

        public var countryCode: String

        public var contactPerson: String

        public var phone: String

        public var addressCategory: String

        public var email: String?

        public var country: String

        public var pincode: Int

        public var addressType: String

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case landmark

            case city

            case state

            case updatedAt = "updated_at"

            case area

            case latitude

            case address1

            case version

            case longitude

            case address2

            case countryCode = "country_code"

            case contactPerson = "contact_person"

            case phone

            case addressCategory = "address_category"

            case email

            case country

            case pincode

            case addressType = "address_type"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.city = city

            self.state = state

            self.updatedAt = updatedAt

            self.area = area

            self.latitude = latitude

            self.address1 = address1

            self.version = version

            self.longitude = longitude

            self.address2 = address2

            self.countryCode = countryCode

            self.contactPerson = contactPerson

            self.phone = phone

            self.addressCategory = addressCategory

            self.email = email

            self.country = country

            self.pincode = pincode

            self.addressType = addressType

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

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
        public var landmark: String?

        public var city: String

        public var state: String

        public var updatedAt: String

        public var area: String?

        public var latitude: Double

        public var address1: String

        public var version: String?

        public var longitude: Double

        public var address2: String?

        public var countryCode: String

        public var contactPerson: String

        public var phone: String

        public var addressCategory: String

        public var email: String?

        public var country: String

        public var pincode: Int

        public var addressType: String

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case landmark

            case city

            case state

            case updatedAt = "updated_at"

            case area

            case latitude

            case address1

            case version

            case longitude

            case address2

            case countryCode = "country_code"

            case contactPerson = "contact_person"

            case phone

            case addressCategory = "address_category"

            case email

            case country

            case pincode

            case addressType = "address_type"

            case createdAt = "created_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.city = city

            self.state = state

            self.updatedAt = updatedAt

            self.area = area

            self.latitude = latitude

            self.address1 = address1

            self.version = version

            self.longitude = longitude

            self.address2 = address2

            self.countryCode = countryCode

            self.contactPerson = contactPerson

            self.phone = phone

            self.addressCategory = addressCategory

            self.email = email

            self.country = country

            self.pincode = pincode

            self.addressType = addressType

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
