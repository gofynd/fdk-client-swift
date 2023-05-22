

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var address1: String

        public var countryCode: String

        public var createdAt: String

        public var updatedAt: String

        public var longitude: Double

        public var email: String?

        public var landmark: String?

        public var addressCategory: String

        public var latitude: Double

        public var pincode: Int

        public var phone: String

        public var version: String?

        public var country: String

        public var state: String

        public var area: String?

        public var addressType: String

        public var contactPerson: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case address1

            case countryCode = "country_code"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case longitude

            case email

            case landmark

            case addressCategory = "address_category"

            case latitude

            case pincode

            case phone

            case version

            case country

            case state

            case area

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case address2
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.address1 = address1

            self.countryCode = countryCode

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.email = email

            self.landmark = landmark

            self.addressCategory = addressCategory

            self.latitude = latitude

            self.pincode = pincode

            self.phone = phone

            self.version = version

            self.country = country

            self.state = state

            self.area = area

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var address1: String

        public var countryCode: String

        public var createdAt: String

        public var updatedAt: String

        public var longitude: Double

        public var email: String?

        public var landmark: String?

        public var addressCategory: String

        public var latitude: Double

        public var pincode: Int

        public var phone: String

        public var version: String?

        public var country: String

        public var state: String

        public var area: String?

        public var addressType: String

        public var contactPerson: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case address1

            case countryCode = "country_code"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case longitude

            case email

            case landmark

            case addressCategory = "address_category"

            case latitude

            case pincode

            case phone

            case version

            case country

            case state

            case area

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case address2
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.address1 = address1

            self.countryCode = countryCode

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.email = email

            self.landmark = landmark

            self.addressCategory = addressCategory

            self.latitude = latitude

            self.pincode = pincode

            self.phone = phone

            self.version = version

            self.country = country

            self.state = state

            self.area = area

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
