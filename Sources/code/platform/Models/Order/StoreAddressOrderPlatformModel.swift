

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var countryCode: String

        public var pincode: Int

        public var addressCategory: String

        public var version: String?

        public var address1: String

        public var contactPerson: String

        public var createdAt: String

        public var email: String?

        public var city: String

        public var updatedAt: String

        public var state: String

        public var addressType: String

        public var address2: String?

        public var country: String

        public var phone: String

        public var latitude: Double

        public var area: String?

        public var landmark: String?

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case pincode

            case addressCategory = "address_category"

            case version

            case address1

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case email

            case city

            case updatedAt = "updated_at"

            case state

            case addressType = "address_type"

            case address2

            case country

            case phone

            case latitude

            case area

            case landmark

            case longitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.countryCode = countryCode

            self.pincode = pincode

            self.addressCategory = addressCategory

            self.version = version

            self.address1 = address1

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.email = email

            self.city = city

            self.updatedAt = updatedAt

            self.state = state

            self.addressType = addressType

            self.address2 = address2

            self.country = country

            self.phone = phone

            self.latitude = latitude

            self.area = area

            self.landmark = landmark

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var countryCode: String

        public var pincode: Int

        public var addressCategory: String

        public var version: String?

        public var address1: String

        public var contactPerson: String

        public var createdAt: String

        public var email: String?

        public var city: String

        public var updatedAt: String

        public var state: String

        public var addressType: String

        public var address2: String?

        public var country: String

        public var phone: String

        public var latitude: Double

        public var area: String?

        public var landmark: String?

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case pincode

            case addressCategory = "address_category"

            case version

            case address1

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case email

            case city

            case updatedAt = "updated_at"

            case state

            case addressType = "address_type"

            case address2

            case country

            case phone

            case latitude

            case area

            case landmark

            case longitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.countryCode = countryCode

            self.pincode = pincode

            self.addressCategory = addressCategory

            self.version = version

            self.address1 = address1

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.email = email

            self.city = city

            self.updatedAt = updatedAt

            self.state = state

            self.addressType = addressType

            self.address2 = address2

            self.country = country

            self.phone = phone

            self.latitude = latitude

            self.area = area

            self.landmark = landmark

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}
