

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var addressCategory: String

        public var updatedAt: String

        public var longitude: Double

        public var country: String

        public var version: String?

        public var contactPerson: String

        public var addressType: String

        public var latitude: Double

        public var countryCode: String

        public var city: String

        public var pincode: Int

        public var phone: String

        public var area: String?

        public var email: String?

        public var address2: String?

        public var landmark: String?

        public var createdAt: String

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case state

            case addressCategory = "address_category"

            case updatedAt = "updated_at"

            case longitude

            case country

            case version

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case latitude

            case countryCode = "country_code"

            case city

            case pincode

            case phone

            case area

            case email

            case address2

            case landmark

            case createdAt = "created_at"

            case address1
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.addressCategory = addressCategory

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.country = country

            self.version = version

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.latitude = latitude

            self.countryCode = countryCode

            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.area = area

            self.email = email

            self.address2 = address2

            self.landmark = landmark

            self.createdAt = createdAt

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var addressCategory: String

        public var updatedAt: String

        public var longitude: Double

        public var country: String

        public var version: String?

        public var contactPerson: String

        public var addressType: String

        public var latitude: Double

        public var countryCode: String

        public var city: String

        public var pincode: Int

        public var phone: String

        public var area: String?

        public var email: String?

        public var address2: String?

        public var landmark: String?

        public var createdAt: String

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case state

            case addressCategory = "address_category"

            case updatedAt = "updated_at"

            case longitude

            case country

            case version

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case latitude

            case countryCode = "country_code"

            case city

            case pincode

            case phone

            case area

            case email

            case address2

            case landmark

            case createdAt = "created_at"

            case address1
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.addressCategory = addressCategory

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.country = country

            self.version = version

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.latitude = latitude

            self.countryCode = countryCode

            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.area = area

            self.email = email

            self.address2 = address2

            self.landmark = landmark

            self.createdAt = createdAt

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}
