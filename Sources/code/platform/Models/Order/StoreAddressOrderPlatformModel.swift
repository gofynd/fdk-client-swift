

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var landmark: String?

        public var pincode: Int

        public var address1: String

        public var state: String

        public var version: String?

        public var country: String

        public var latitude: Double

        public var longitude: Double

        public var email: String?

        public var createdAt: String

        public var addressCategory: String

        public var address2: String?

        public var city: String

        public var addressType: String

        public var contactPerson: String

        public var countryCode: String

        public var updatedAt: String

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case landmark

            case pincode

            case address1

            case state

            case version

            case country

            case latitude

            case longitude

            case email

            case createdAt = "created_at"

            case addressCategory = "address_category"

            case address2

            case city

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case area
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.landmark = landmark

            self.pincode = pincode

            self.address1 = address1

            self.state = state

            self.version = version

            self.country = country

            self.latitude = latitude

            self.longitude = longitude

            self.email = email

            self.createdAt = createdAt

            self.addressCategory = addressCategory

            self.address2 = address2

            self.city = city

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var landmark: String?

        public var pincode: Int

        public var address1: String

        public var state: String

        public var version: String?

        public var country: String

        public var latitude: Double

        public var longitude: Double

        public var email: String?

        public var createdAt: String

        public var addressCategory: String

        public var address2: String?

        public var city: String

        public var addressType: String

        public var contactPerson: String

        public var countryCode: String

        public var updatedAt: String

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case landmark

            case pincode

            case address1

            case state

            case version

            case country

            case latitude

            case longitude

            case email

            case createdAt = "created_at"

            case addressCategory = "address_category"

            case address2

            case city

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case area
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.landmark = landmark

            self.pincode = pincode

            self.address1 = address1

            self.state = state

            self.version = version

            self.country = country

            self.latitude = latitude

            self.longitude = longitude

            self.email = email

            self.createdAt = createdAt

            self.addressCategory = addressCategory

            self.address2 = address2

            self.city = city

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)
        }
    }
}
