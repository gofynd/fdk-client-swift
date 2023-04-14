

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var city: String

        public var area: String?

        public var updatedAt: String

        public var latitude: Double

        public var addressType: String

        public var contactPerson: String

        public var addressCategory: String

        public var landmark: String?

        public var address1: String

        public var longitude: Double

        public var createdAt: String

        public var country: String

        public var address2: String?

        public var version: String?

        public var countryCode: String

        public var pincode: Int

        public var state: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case city

            case area

            case updatedAt = "updated_at"

            case latitude

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case addressCategory = "address_category"

            case landmark

            case address1

            case longitude

            case createdAt = "created_at"

            case country

            case address2

            case version

            case countryCode = "country_code"

            case pincode

            case state

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.city = city

            self.area = area

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.addressCategory = addressCategory

            self.landmark = landmark

            self.address1 = address1

            self.longitude = longitude

            self.createdAt = createdAt

            self.country = country

            self.address2 = address2

            self.version = version

            self.countryCode = countryCode

            self.pincode = pincode

            self.state = state

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var city: String

        public var area: String?

        public var updatedAt: String

        public var latitude: Double

        public var addressType: String

        public var contactPerson: String

        public var addressCategory: String

        public var landmark: String?

        public var address1: String

        public var longitude: Double

        public var createdAt: String

        public var country: String

        public var address2: String?

        public var version: String?

        public var countryCode: String

        public var pincode: Int

        public var state: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case city

            case area

            case updatedAt = "updated_at"

            case latitude

            case addressType = "address_type"

            case contactPerson = "contact_person"

            case addressCategory = "address_category"

            case landmark

            case address1

            case longitude

            case createdAt = "created_at"

            case country

            case address2

            case version

            case countryCode = "country_code"

            case pincode

            case state

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.city = city

            self.area = area

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.addressType = addressType

            self.contactPerson = contactPerson

            self.addressCategory = addressCategory

            self.landmark = landmark

            self.address1 = address1

            self.longitude = longitude

            self.createdAt = createdAt

            self.country = country

            self.address2 = address2

            self.version = version

            self.countryCode = countryCode

            self.pincode = pincode

            self.state = state

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
