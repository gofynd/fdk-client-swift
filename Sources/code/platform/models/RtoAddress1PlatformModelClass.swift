

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var latitude: Double

        public var code: String?

        public var phone: String

        public var pincode: String

        public var locationType: String

        public var storeAddressJson: StoreAddress

        public var city: String

        public var contactPerson: String

        public var name: String

        public var address1: String

        public var longitude: Double

        public var address2: String?

        public var storeEmail: String

        public var country: String

        public var state: String

        public var rtoaId: Int

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case latitude

            case code

            case phone

            case pincode

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case city

            case contactPerson = "contact_person"

            case name

            case address1

            case longitude

            case address2

            case storeEmail = "store_email"

            case country

            case state

            case rtoaId = "rtoa_id"

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.latitude = latitude

            self.code = code

            self.phone = phone

            self.pincode = pincode

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.city = city

            self.contactPerson = contactPerson

            self.name = name

            self.address1 = address1

            self.longitude = longitude

            self.address2 = address2

            self.storeEmail = storeEmail

            self.country = country

            self.state = state

            self.rtoaId = rtoaId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
