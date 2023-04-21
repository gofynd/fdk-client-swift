

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var updatedAt: String

        public var longitude: Double

        public var createdAt: String

        public var email: String?

        public var area: String?

        public var phone: String

        public var country: String

        public var state: String

        public var addressCategory: String

        public var addressType: String

        public var landmark: String?

        public var version: String?

        public var latitude: Double

        public var pincode: Int

        public var address1: String

        public var contactPerson: String

        public var city: String

        public var address2: String?

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case longitude

            case createdAt = "created_at"

            case email

            case area

            case phone

            case country

            case state

            case addressCategory = "address_category"

            case addressType = "address_type"

            case landmark

            case version

            case latitude

            case pincode

            case address1

            case contactPerson = "contact_person"

            case city

            case address2

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.updatedAt = updatedAt

            self.longitude = longitude

            self.createdAt = createdAt

            self.email = email

            self.area = area

            self.phone = phone

            self.country = country

            self.state = state

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.landmark = landmark

            self.version = version

            self.latitude = latitude

            self.pincode = pincode

            self.address1 = address1

            self.contactPerson = contactPerson

            self.city = city

            self.address2 = address2

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var updatedAt: String

        public var longitude: Double

        public var createdAt: String

        public var email: String?

        public var area: String?

        public var phone: String

        public var country: String

        public var state: String

        public var addressCategory: String

        public var addressType: String

        public var landmark: String?

        public var version: String?

        public var latitude: Double

        public var pincode: Int

        public var address1: String

        public var contactPerson: String

        public var city: String

        public var address2: String?

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case longitude

            case createdAt = "created_at"

            case email

            case area

            case phone

            case country

            case state

            case addressCategory = "address_category"

            case addressType = "address_type"

            case landmark

            case version

            case latitude

            case pincode

            case address1

            case contactPerson = "contact_person"

            case city

            case address2

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.updatedAt = updatedAt

            self.longitude = longitude

            self.createdAt = createdAt

            self.email = email

            self.area = area

            self.phone = phone

            self.country = country

            self.state = state

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.landmark = landmark

            self.version = version

            self.latitude = latitude

            self.pincode = pincode

            self.address1 = address1

            self.contactPerson = contactPerson

            self.city = city

            self.address2 = address2

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
