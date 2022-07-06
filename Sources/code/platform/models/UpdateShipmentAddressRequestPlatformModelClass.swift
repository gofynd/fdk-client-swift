

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentAddressRequest
         Used By: Order
     */

    class UpdateShipmentAddressRequest: Codable {
        public var email: String

        public var address: String

        public var pincode: String

        public var state: String

        public var addressType: String

        public var country: String

        public var name: String

        public var phone: String

        public var area: String

        public var landmark: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case email

            case address

            case pincode

            case state

            case addressType = "address_type"

            case country

            case name

            case phone

            case area

            case landmark

            case city
        }

        public init(address: String, addressType: String, area: String, city: String, country: String, email: String, landmark: String, name: String, phone: String, pincode: String, state: String) {
            self.email = email

            self.address = address

            self.pincode = pincode

            self.state = state

            self.addressType = addressType

            self.country = country

            self.name = name

            self.phone = phone

            self.area = area

            self.landmark = landmark

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)

            area = try container.decode(String.self, forKey: .area)

            landmark = try container.decode(String.self, forKey: .landmark)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
