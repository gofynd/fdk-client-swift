

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var version: String?

        public var contactPerson: String

        public var longitude: Double

        public var createdAt: String

        public var area: String?

        public var landmark: String?

        public var state: String

        public var pincode: Int

        public var address2: String?

        public var city: String

        public var latitude: Double

        public var addressCategory: String

        public var addressType: String

        public var country: String

        public var updatedAt: String

        public var countryCode: String

        public var phone: String

        public var address1: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case version

            case contactPerson = "contact_person"

            case longitude

            case createdAt = "created_at"

            case area

            case landmark

            case state

            case pincode

            case address2

            case city

            case latitude

            case addressCategory = "address_category"

            case addressType = "address_type"

            case country

            case updatedAt = "updated_at"

            case countryCode = "country_code"

            case phone

            case address1

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.version = version

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.createdAt = createdAt

            self.area = area

            self.landmark = landmark

            self.state = state

            self.pincode = pincode

            self.address2 = address2

            self.city = city

            self.latitude = latitude

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.country = country

            self.updatedAt = updatedAt

            self.countryCode = countryCode

            self.phone = phone

            self.address1 = address1

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

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
        public var version: String?

        public var contactPerson: String

        public var longitude: Double

        public var createdAt: String

        public var area: String?

        public var landmark: String?

        public var state: String

        public var pincode: Int

        public var address2: String?

        public var city: String

        public var latitude: Double

        public var addressCategory: String

        public var addressType: String

        public var country: String

        public var updatedAt: String

        public var countryCode: String

        public var phone: String

        public var address1: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case version

            case contactPerson = "contact_person"

            case longitude

            case createdAt = "created_at"

            case area

            case landmark

            case state

            case pincode

            case address2

            case city

            case latitude

            case addressCategory = "address_category"

            case addressType = "address_type"

            case country

            case updatedAt = "updated_at"

            case countryCode = "country_code"

            case phone

            case address1

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.version = version

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.createdAt = createdAt

            self.area = area

            self.landmark = landmark

            self.state = state

            self.pincode = pincode

            self.address2 = address2

            self.city = city

            self.latitude = latitude

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.country = country

            self.updatedAt = updatedAt

            self.countryCode = countryCode

            self.phone = phone

            self.address1 = address1

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
