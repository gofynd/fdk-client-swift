

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var latitude: Double

        public var createdAt: String

        public var contactPerson: String

        public var email: String?

        public var pincode: Int

        public var addressType: String

        public var state: String

        public var version: String?

        public var landmark: String?

        public var updatedAt: String

        public var address2: String?

        public var countryCode: String

        public var addressCategory: String

        public var city: String

        public var address1: String

        public var country: String

        public var longitude: Double

        public var area: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case email

            case pincode

            case addressType = "address_type"

            case state

            case version

            case landmark

            case updatedAt = "updated_at"

            case address2

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case city

            case address1

            case country

            case longitude

            case area

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.email = email

            self.pincode = pincode

            self.addressType = addressType

            self.state = state

            self.version = version

            self.landmark = landmark

            self.updatedAt = updatedAt

            self.address2 = address2

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.city = city

            self.address1 = address1

            self.country = country

            self.longitude = longitude

            self.area = area

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var latitude: Double

        public var createdAt: String

        public var contactPerson: String

        public var email: String?

        public var pincode: Int

        public var addressType: String

        public var state: String

        public var version: String?

        public var landmark: String?

        public var updatedAt: String

        public var address2: String?

        public var countryCode: String

        public var addressCategory: String

        public var city: String

        public var address1: String

        public var country: String

        public var longitude: Double

        public var area: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case email

            case pincode

            case addressType = "address_type"

            case state

            case version

            case landmark

            case updatedAt = "updated_at"

            case address2

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case city

            case address1

            case country

            case longitude

            case area

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.email = email

            self.pincode = pincode

            self.addressType = addressType

            self.state = state

            self.version = version

            self.landmark = landmark

            self.updatedAt = updatedAt

            self.address2 = address2

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.city = city

            self.address1 = address1

            self.country = country

            self.longitude = longitude

            self.area = area

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)
        }
    }
}
