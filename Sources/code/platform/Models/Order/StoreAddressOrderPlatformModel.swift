

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var landmark: String?

        public var address2: String?

        public var contactPerson: String

        public var addressType: String

        public var state: String

        public var address1: String

        public var createdAt: String

        public var updatedAt: String

        public var area: String?

        public var pincode: Int

        public var phone: String

        public var addressCategory: String

        public var countryCode: String

        public var country: String

        public var version: String?

        public var city: String

        public var longitude: Double

        public var email: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case address2

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case state

            case address1

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case area

            case pincode

            case phone

            case addressCategory = "address_category"

            case countryCode = "country_code"

            case country

            case version

            case city

            case longitude

            case email

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.address2 = address2

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.state = state

            self.address1 = address1

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.area = area

            self.pincode = pincode

            self.phone = phone

            self.addressCategory = addressCategory

            self.countryCode = countryCode

            self.country = country

            self.version = version

            self.city = city

            self.longitude = longitude

            self.email = email

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

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
        public var landmark: String?

        public var address2: String?

        public var contactPerson: String

        public var addressType: String

        public var state: String

        public var address1: String

        public var createdAt: String

        public var updatedAt: String

        public var area: String?

        public var pincode: Int

        public var phone: String

        public var addressCategory: String

        public var countryCode: String

        public var country: String

        public var version: String?

        public var city: String

        public var longitude: Double

        public var email: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case address2

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case state

            case address1

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case area

            case pincode

            case phone

            case addressCategory = "address_category"

            case countryCode = "country_code"

            case country

            case version

            case city

            case longitude

            case email

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.address2 = address2

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.state = state

            self.address1 = address1

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.area = area

            self.pincode = pincode

            self.phone = phone

            self.addressCategory = addressCategory

            self.countryCode = countryCode

            self.country = country

            self.version = version

            self.city = city

            self.longitude = longitude

            self.email = email

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
