

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressCategory: String

        public var createdAt: String

        public var contactPerson: String

        public var countryCode: String

        public var updatedAt: String

        public var landmark: String?

        public var city: String

        public var version: String?

        public var email: String?

        public var latitude: Double

        public var address2: String?

        public var country: String

        public var pincode: Int

        public var phone: String

        public var area: String?

        public var longitude: Double

        public var state: String

        public var address1: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case addressCategory = "address_category"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case landmark

            case city

            case version

            case email

            case latitude

            case address2

            case country

            case pincode

            case phone

            case area

            case longitude

            case state

            case address1

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.city = city

            self.version = version

            self.email = email

            self.latitude = latitude

            self.address2 = address2

            self.country = country

            self.pincode = pincode

            self.phone = phone

            self.area = area

            self.longitude = longitude

            self.state = state

            self.address1 = address1

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressCategory: String

        public var createdAt: String

        public var contactPerson: String

        public var countryCode: String

        public var updatedAt: String

        public var landmark: String?

        public var city: String

        public var version: String?

        public var email: String?

        public var latitude: Double

        public var address2: String?

        public var country: String

        public var pincode: Int

        public var phone: String

        public var area: String?

        public var longitude: Double

        public var state: String

        public var address1: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case addressCategory = "address_category"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case landmark

            case city

            case version

            case email

            case latitude

            case address2

            case country

            case pincode

            case phone

            case area

            case longitude

            case state

            case address1

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.city = city

            self.version = version

            self.email = email

            self.latitude = latitude

            self.address2 = address2

            self.country = country

            self.pincode = pincode

            self.phone = phone

            self.area = area

            self.longitude = longitude

            self.state = state

            self.address1 = address1

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
