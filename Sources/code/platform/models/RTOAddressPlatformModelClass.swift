

import Foundation
public extension PlatformClient {
    /*
         Model: RTOAddress
         Used By: Order
     */

    class RTOAddress: Codable {
        public var storeAddressJson: StoreAddress

        public var longitude: Double

        public var state: String

        public var code: String?

        public var contactPerson: String

        public var address2: String?

        public var address1: String

        public var latitude: Double

        public var locationType: String

        public var pincode: String

        public var phone: String

        public var rtoaId: Int

        public var storeEmail: String

        public var name: String

        public var country: String

        public var city: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeAddressJson = "store_address_json"

            case longitude

            case state

            case code

            case contactPerson = "contact_person"

            case address2

            case address1

            case latitude

            case locationType = "location_type"

            case pincode

            case phone

            case rtoaId = "rtoa_id"

            case storeEmail = "store_email"

            case name

            case country

            case city

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.state = state

            self.code = code

            self.contactPerson = contactPerson

            self.address2 = address2

            self.address1 = address1

            self.latitude = latitude

            self.locationType = locationType

            self.pincode = pincode

            self.phone = phone

            self.rtoaId = rtoaId

            self.storeEmail = storeEmail

            self.name = name

            self.country = country

            self.city = city

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
