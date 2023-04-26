

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var longitude: Double

        public var contactPerson: String

        public var address2: String?

        public var landmark: String?

        public var email: String?

        public var address1: String

        public var updatedAt: String

        public var createdAt: String

        public var country: String

        public var pincode: Int

        public var addressType: String

        public var phone: String

        public var countryCode: String

        public var city: String

        public var area: String?

        public var latitude: Double

        public var addressCategory: String

        public var state: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case contactPerson = "contact_person"

            case address2

            case landmark

            case email

            case address1

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case country

            case pincode

            case addressType = "address_type"

            case phone

            case countryCode = "country_code"

            case city

            case area

            case latitude

            case addressCategory = "address_category"

            case state

            case version
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.contactPerson = contactPerson

            self.address2 = address2

            self.landmark = landmark

            self.email = email

            self.address1 = address1

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.country = country

            self.pincode = pincode

            self.addressType = addressType

            self.phone = phone

            self.countryCode = countryCode

            self.city = city

            self.area = area

            self.latitude = latitude

            self.addressCategory = addressCategory

            self.state = state

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            phone = try container.decode(String.self, forKey: .phone)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var longitude: Double

        public var contactPerson: String

        public var address2: String?

        public var landmark: String?

        public var email: String?

        public var address1: String

        public var updatedAt: String

        public var createdAt: String

        public var country: String

        public var pincode: Int

        public var addressType: String

        public var phone: String

        public var countryCode: String

        public var city: String

        public var area: String?

        public var latitude: Double

        public var addressCategory: String

        public var state: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case contactPerson = "contact_person"

            case address2

            case landmark

            case email

            case address1

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case country

            case pincode

            case addressType = "address_type"

            case phone

            case countryCode = "country_code"

            case city

            case area

            case latitude

            case addressCategory = "address_category"

            case state

            case version
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.longitude = longitude

            self.contactPerson = contactPerson

            self.address2 = address2

            self.landmark = landmark

            self.email = email

            self.address1 = address1

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.country = country

            self.pincode = pincode

            self.addressType = addressType

            self.phone = phone

            self.countryCode = countryCode

            self.city = city

            self.area = area

            self.latitude = latitude

            self.addressCategory = addressCategory

            self.state = state

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            phone = try container.decode(String.self, forKey: .phone)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            state = try container.decode(String.self, forKey: .state)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
