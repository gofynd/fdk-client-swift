

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address1: String

        public var email: String?

        public var landmark: String?

        public var phone: String

        public var addressType: String

        public var latitude: Double

        public var area: String?

        public var countryCode: String

        public var country: String

        public var city: String

        public var pincode: Int

        public var updatedAt: String

        public var state: String

        public var longitude: Double

        public var addressCategory: String

        public var version: String?

        public var createdAt: String

        public var address2: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case email

            case landmark

            case phone

            case addressType = "address_type"

            case latitude

            case area

            case countryCode = "country_code"

            case country

            case city

            case pincode

            case updatedAt = "updated_at"

            case state

            case longitude

            case addressCategory = "address_category"

            case version

            case createdAt = "created_at"

            case address2

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address1 = address1

            self.email = email

            self.landmark = landmark

            self.phone = phone

            self.addressType = addressType

            self.latitude = latitude

            self.area = area

            self.countryCode = countryCode

            self.country = country

            self.city = city

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.state = state

            self.longitude = longitude

            self.addressCategory = addressCategory

            self.version = version

            self.createdAt = createdAt

            self.address2 = address2

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address1: String

        public var email: String?

        public var landmark: String?

        public var phone: String

        public var addressType: String

        public var latitude: Double

        public var area: String?

        public var countryCode: String

        public var country: String

        public var city: String

        public var pincode: Int

        public var updatedAt: String

        public var state: String

        public var longitude: Double

        public var addressCategory: String

        public var version: String?

        public var createdAt: String

        public var address2: String?

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case email

            case landmark

            case phone

            case addressType = "address_type"

            case latitude

            case area

            case countryCode = "country_code"

            case country

            case city

            case pincode

            case updatedAt = "updated_at"

            case state

            case longitude

            case addressCategory = "address_category"

            case version

            case createdAt = "created_at"

            case address2

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address1 = address1

            self.email = email

            self.landmark = landmark

            self.phone = phone

            self.addressType = addressType

            self.latitude = latitude

            self.area = area

            self.countryCode = countryCode

            self.country = country

            self.city = city

            self.pincode = pincode

            self.updatedAt = updatedAt

            self.state = state

            self.longitude = longitude

            self.addressCategory = addressCategory

            self.version = version

            self.createdAt = createdAt

            self.address2 = address2

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
