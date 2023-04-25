

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var updatedAt: String

        public var city: String

        public var addressType: String

        public var area: String?

        public var contactPerson: String

        public var version: String?

        public var createdAt: String

        public var longitude: Double

        public var phone: String

        public var latitude: Double

        public var address2: String?

        public var landmark: String?

        public var address1: String

        public var pincode: Int

        public var state: String

        public var email: String?

        public var country: String

        public var addressCategory: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case city

            case addressType = "address_type"

            case area

            case contactPerson = "contact_person"

            case version

            case createdAt = "created_at"

            case longitude

            case phone

            case latitude

            case address2

            case landmark

            case address1

            case pincode

            case state

            case email

            case country

            case addressCategory = "address_category"

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.updatedAt = updatedAt

            self.city = city

            self.addressType = addressType

            self.area = area

            self.contactPerson = contactPerson

            self.version = version

            self.createdAt = createdAt

            self.longitude = longitude

            self.phone = phone

            self.latitude = latitude

            self.address2 = address2

            self.landmark = landmark

            self.address1 = address1

            self.pincode = pincode

            self.state = state

            self.email = email

            self.country = country

            self.addressCategory = addressCategory

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

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

        public var city: String

        public var addressType: String

        public var area: String?

        public var contactPerson: String

        public var version: String?

        public var createdAt: String

        public var longitude: Double

        public var phone: String

        public var latitude: Double

        public var address2: String?

        public var landmark: String?

        public var address1: String

        public var pincode: Int

        public var state: String

        public var email: String?

        public var country: String

        public var addressCategory: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case city

            case addressType = "address_type"

            case area

            case contactPerson = "contact_person"

            case version

            case createdAt = "created_at"

            case longitude

            case phone

            case latitude

            case address2

            case landmark

            case address1

            case pincode

            case state

            case email

            case country

            case addressCategory = "address_category"

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.updatedAt = updatedAt

            self.city = city

            self.addressType = addressType

            self.area = area

            self.contactPerson = contactPerson

            self.version = version

            self.createdAt = createdAt

            self.longitude = longitude

            self.phone = phone

            self.latitude = latitude

            self.address2 = address2

            self.landmark = landmark

            self.address1 = address1

            self.pincode = pincode

            self.state = state

            self.email = email

            self.country = country

            self.addressCategory = addressCategory

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

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

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
