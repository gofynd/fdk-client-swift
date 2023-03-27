

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var version: String?

        public var email: String?

        public var state: String

        public var phone: String

        public var latitude: Double

        public var updatedAt: String

        public var createdAt: String

        public var city: String

        public var contactPerson: String

        public var landmark: String?

        public var country: String

        public var address2: String?

        public var longitude: Double

        public var addressCategory: String

        public var address1: String

        public var countryCode: String

        public var pincode: Int

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case version

            case email

            case state

            case phone

            case latitude

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case contactPerson = "contact_person"

            case landmark

            case country

            case address2

            case longitude

            case addressCategory = "address_category"

            case address1

            case countryCode = "country_code"

            case pincode

            case area
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.version = version

            self.email = email

            self.state = state

            self.phone = phone

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.contactPerson = contactPerson

            self.landmark = landmark

            self.country = country

            self.address2 = address2

            self.longitude = longitude

            self.addressCategory = addressCategory

            self.address1 = address1

            self.countryCode = countryCode

            self.pincode = pincode

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                version = try container.decode(String.self, forKey: .version)

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

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var addressType: String

        public var version: String?

        public var email: String?

        public var state: String

        public var phone: String

        public var latitude: Double

        public var updatedAt: String

        public var createdAt: String

        public var city: String

        public var contactPerson: String

        public var landmark: String?

        public var country: String

        public var address2: String?

        public var longitude: Double

        public var addressCategory: String

        public var address1: String

        public var countryCode: String

        public var pincode: Int

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case version

            case email

            case state

            case phone

            case latitude

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case contactPerson = "contact_person"

            case landmark

            case country

            case address2

            case longitude

            case addressCategory = "address_category"

            case address1

            case countryCode = "country_code"

            case pincode

            case area
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.version = version

            self.email = email

            self.state = state

            self.phone = phone

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.contactPerson = contactPerson

            self.landmark = landmark

            self.country = country

            self.address2 = address2

            self.longitude = longitude

            self.addressCategory = addressCategory

            self.address1 = address1

            self.countryCode = countryCode

            self.pincode = pincode

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                version = try container.decode(String.self, forKey: .version)

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

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(area, forKey: .area)
        }
    }
}
