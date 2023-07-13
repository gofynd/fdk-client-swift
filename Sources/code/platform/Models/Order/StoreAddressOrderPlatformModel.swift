

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var landmark: String?

        public var countryCode: String

        public var addressCategory: String

        public var area: String?

        public var createdAt: String

        public var email: String?

        public var address1: String

        public var pincode: Int

        public var phone: String

        public var version: String?

        public var contactPerson: String

        public var updatedAt: String

        public var state: String

        public var longitude: Double

        public var country: String

        public var address2: String?

        public var city: String

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case landmark

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case area

            case createdAt = "created_at"

            case email

            case address1

            case pincode

            case phone

            case version

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case state

            case longitude

            case country

            case address2

            case city

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.landmark = landmark

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.area = area

            self.createdAt = createdAt

            self.email = email

            self.address1 = address1

            self.pincode = pincode

            self.phone = phone

            self.version = version

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.state = state

            self.longitude = longitude

            self.country = country

            self.address2 = address2

            self.city = city

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var landmark: String?

        public var countryCode: String

        public var addressCategory: String

        public var area: String?

        public var createdAt: String

        public var email: String?

        public var address1: String

        public var pincode: Int

        public var phone: String

        public var version: String?

        public var contactPerson: String

        public var updatedAt: String

        public var state: String

        public var longitude: Double

        public var country: String

        public var address2: String?

        public var city: String

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case landmark

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case area

            case createdAt = "created_at"

            case email

            case address1

            case pincode

            case phone

            case version

            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case state

            case longitude

            case country

            case address2

            case city

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.landmark = landmark

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.area = area

            self.createdAt = createdAt

            self.email = email

            self.address1 = address1

            self.pincode = pincode

            self.phone = phone

            self.version = version

            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.state = state

            self.longitude = longitude

            self.country = country

            self.address2 = address2

            self.city = city

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
