

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var latitude: Double

        public var phone: String

        public var address2: String?

        public var area: String?

        public var updatedAt: String

        public var createdAt: String

        public var city: String

        public var addressType: String

        public var state: String

        public var version: String?

        public var email: String?

        public var landmark: String?

        public var pincode: Int

        public var country: String

        public var longitude: Double

        public var countryCode: String

        public var addressCategory: String

        public var address1: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case phone

            case address2

            case area

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case addressType = "address_type"

            case state

            case version

            case email

            case landmark

            case pincode

            case country

            case longitude

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case address1

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.phone = phone

            self.address2 = address2

            self.area = area

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.addressType = addressType

            self.state = state

            self.version = version

            self.email = email

            self.landmark = landmark

            self.pincode = pincode

            self.country = country

            self.longitude = longitude

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.address1 = address1

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(String.self, forKey: .phone)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

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

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            longitude = try container.decode(Double.self, forKey: .longitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

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
        public var latitude: Double

        public var phone: String

        public var address2: String?

        public var area: String?

        public var updatedAt: String

        public var createdAt: String

        public var city: String

        public var addressType: String

        public var state: String

        public var version: String?

        public var email: String?

        public var landmark: String?

        public var pincode: Int

        public var country: String

        public var longitude: Double

        public var countryCode: String

        public var addressCategory: String

        public var address1: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case latitude

            case phone

            case address2

            case area

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case city

            case addressType = "address_type"

            case state

            case version

            case email

            case landmark

            case pincode

            case country

            case longitude

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case address1

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.phone = phone

            self.address2 = address2

            self.area = area

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.city = city

            self.addressType = addressType

            self.state = state

            self.version = version

            self.email = email

            self.landmark = landmark

            self.pincode = pincode

            self.country = country

            self.longitude = longitude

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.address1 = address1

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(String.self, forKey: .phone)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

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

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            longitude = try container.decode(Double.self, forKey: .longitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
