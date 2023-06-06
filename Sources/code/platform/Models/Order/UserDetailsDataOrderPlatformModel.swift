

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var name: String

        public var pincode: String

        public var email: String?

        public var addressType: String?

        public var address: String

        public var address1: String?

        public var state: String

        public var city: String

        public var phone: String

        public var country: String

        public var landmark: String?

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case pincode

            case email

            case addressType = "address_type"

            case address

            case address1

            case state

            case city

            case phone

            case country

            case landmark

            case area
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.name = name

            self.pincode = pincode

            self.email = email

            self.addressType = addressType

            self.address = address

            self.address1 = address1

            self.state = state

            self.city = city

            self.phone = phone

            self.country = country

            self.landmark = landmark

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(area, forKey: .area)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var name: String

        public var pincode: String

        public var email: String?

        public var addressType: String?

        public var address: String

        public var address1: String?

        public var state: String

        public var city: String

        public var phone: String

        public var country: String

        public var landmark: String?

        public var area: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case pincode

            case email

            case addressType = "address_type"

            case address

            case address1

            case state

            case city

            case phone

            case country

            case landmark

            case area
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.name = name

            self.pincode = pincode

            self.email = email

            self.addressType = addressType

            self.address = address

            self.address1 = address1

            self.state = state

            self.city = city

            self.phone = phone

            self.country = country

            self.landmark = landmark

            self.area = area
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(area, forKey: .area)
        }
    }
}
