

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var address1: String

        public var rtoaId: Int

        public var longitude: Double

        public var companyId: Int

        public var address2: String?

        public var name: String

        public var phone: String

        public var state: String

        public var storeEmail: String

        public var pincode: String

        public var latitude: Double

        public var city: String

        public var country: String

        public var locationType: String

        public var contactPerson: String

        public var storeAddressJson: StoreAddress

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case rtoaId = "rtoa_id"

            case longitude

            case companyId = "company_id"

            case address2

            case name

            case phone

            case state

            case storeEmail = "store_email"

            case pincode

            case latitude

            case city

            case country

            case locationType = "location_type"

            case contactPerson = "contact_person"

            case storeAddressJson = "store_address_json"

            case code
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.address1 = address1

            self.rtoaId = rtoaId

            self.longitude = longitude

            self.companyId = companyId

            self.address2 = address2

            self.name = name

            self.phone = phone

            self.state = state

            self.storeEmail = storeEmail

            self.pincode = pincode

            self.latitude = latitude

            self.city = city

            self.country = country

            self.locationType = locationType

            self.contactPerson = contactPerson

            self.storeAddressJson = storeAddressJson

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            longitude = try container.decode(Double.self, forKey: .longitude)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            locationType = try container.decode(String.self, forKey: .locationType)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
