

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var locationType: String

        public var name: String

        public var pincode: String

        public var address2: String?

        public var companyId: Int

        public var contactPerson: String

        public var latitude: Double

        public var address1: String

        public var storeAddressJson: StoreAddress

        public var code: String?

        public var longitude: Double

        public var country: String

        public var phone: String

        public var state: String

        public var city: String

        public var storeEmail: String

        public var rtoaId: Int

        public enum CodingKeys: String, CodingKey {
            case locationType = "location_type"

            case name

            case pincode

            case address2

            case companyId = "company_id"

            case contactPerson = "contact_person"

            case latitude

            case address1

            case storeAddressJson = "store_address_json"

            case code

            case longitude

            case country

            case phone

            case state

            case city

            case storeEmail = "store_email"

            case rtoaId = "rtoa_id"
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.locationType = locationType

            self.name = name

            self.pincode = pincode

            self.address2 = address2

            self.companyId = companyId

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.address1 = address1

            self.storeAddressJson = storeAddressJson

            self.code = code

            self.longitude = longitude

            self.country = country

            self.phone = phone

            self.state = state

            self.city = city

            self.storeEmail = storeEmail

            self.rtoaId = rtoaId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            locationType = try container.decode(String.self, forKey: .locationType)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            address1 = try container.decode(String.self, forKey: .address1)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)
        }
    }
}
