

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address2: String?

        public var longitude: Double

        public var state: String

        public var city: String

        public var email: String?

        public var phone: String

        public var landmark: String?

        public var pincode: Int

        public var country: String

        public var address1: String

        public var latitude: Double

        public var createdAt: String

        public var version: String?

        public var area: String?

        public var updatedAt: String

        public var addressCategory: String

        public var countryCode: String

        public var contactPerson: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case longitude

            case state

            case city

            case email

            case phone

            case landmark

            case pincode

            case country

            case address1

            case latitude

            case createdAt = "created_at"

            case version

            case area

            case updatedAt = "updated_at"

            case addressCategory = "address_category"

            case countryCode = "country_code"

            case contactPerson = "contact_person"

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.longitude = longitude

            self.state = state

            self.city = city

            self.email = email

            self.phone = phone

            self.landmark = landmark

            self.pincode = pincode

            self.country = country

            self.address1 = address1

            self.latitude = latitude

            self.createdAt = createdAt

            self.version = version

            self.area = area

            self.updatedAt = updatedAt

            self.addressCategory = addressCategory

            self.countryCode = countryCode

            self.contactPerson = contactPerson

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

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
        public var address2: String?

        public var longitude: Double

        public var state: String

        public var city: String

        public var email: String?

        public var phone: String

        public var landmark: String?

        public var pincode: Int

        public var country: String

        public var address1: String

        public var latitude: Double

        public var createdAt: String

        public var version: String?

        public var area: String?

        public var updatedAt: String

        public var addressCategory: String

        public var countryCode: String

        public var contactPerson: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case longitude

            case state

            case city

            case email

            case phone

            case landmark

            case pincode

            case country

            case address1

            case latitude

            case createdAt = "created_at"

            case version

            case area

            case updatedAt = "updated_at"

            case addressCategory = "address_category"

            case countryCode = "country_code"

            case contactPerson = "contact_person"

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.longitude = longitude

            self.state = state

            self.city = city

            self.email = email

            self.phone = phone

            self.landmark = landmark

            self.pincode = pincode

            self.country = country

            self.address1 = address1

            self.latitude = latitude

            self.createdAt = createdAt

            self.version = version

            self.area = area

            self.updatedAt = updatedAt

            self.addressCategory = addressCategory

            self.countryCode = countryCode

            self.contactPerson = contactPerson

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
