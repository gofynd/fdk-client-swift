

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var area: String?

        public var address1: String

        public var addressCategory: String

        public var state: String

        public var phone: String

        public var updatedAt: String

        public var latitude: Double

        public var country: String

        public var address2: String?

        public var landmark: String?

        public var pincode: Int

        public var createdAt: String

        public var contactPerson: String

        public var addressType: String

        public var email: String?

        public var version: String?

        public var longitude: Double

        public var countryCode: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case area

            case address1

            case addressCategory = "address_category"

            case state

            case phone

            case updatedAt = "updated_at"

            case latitude

            case country

            case address2

            case landmark

            case pincode

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case email

            case version

            case longitude

            case countryCode = "country_code"

            case city
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.area = area

            self.address1 = address1

            self.addressCategory = addressCategory

            self.state = state

            self.phone = phone

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.country = country

            self.address2 = address2

            self.landmark = landmark

            self.pincode = pincode

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.email = email

            self.version = version

            self.longitude = longitude

            self.countryCode = countryCode

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var area: String?

        public var address1: String

        public var addressCategory: String

        public var state: String

        public var phone: String

        public var updatedAt: String

        public var latitude: Double

        public var country: String

        public var address2: String?

        public var landmark: String?

        public var pincode: Int

        public var createdAt: String

        public var contactPerson: String

        public var addressType: String

        public var email: String?

        public var version: String?

        public var longitude: Double

        public var countryCode: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case area

            case address1

            case addressCategory = "address_category"

            case state

            case phone

            case updatedAt = "updated_at"

            case latitude

            case country

            case address2

            case landmark

            case pincode

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case email

            case version

            case longitude

            case countryCode = "country_code"

            case city
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.area = area

            self.address1 = address1

            self.addressCategory = addressCategory

            self.state = state

            self.phone = phone

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.country = country

            self.address2 = address2

            self.landmark = landmark

            self.pincode = pincode

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.email = email

            self.version = version

            self.longitude = longitude

            self.countryCode = countryCode

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            longitude = try container.decode(Double.self, forKey: .longitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
