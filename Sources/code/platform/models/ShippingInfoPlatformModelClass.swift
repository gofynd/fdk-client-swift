

import Foundation
public extension PlatformClient {
    /*
         Model: ShippingInfo
         Used By: Order
     */

    class ShippingInfo: Codable {
        public var address2: String?

        public var firstName: String

        public var middleName: String?

        public var title: String?

        public var landmark: String?

        public var gender: String?

        public var alternateMobileNumber: String?

        public var externalCustomerCode: String?

        public var lastName: String?

        public var primaryMobileNumber: String

        public var geoLocation: [String: Any]?

        public var addressType: String?

        public var countryCode: String?

        public var pincode: String

        public var slot: [[String: Any]]?

        public var alternateEmail: String?

        public var state: String

        public var customerCode: String?

        public var city: String

        public var address1: String

        public var houseNo: String?

        public var stateCode: String?

        public var shippingType: String?

        public var primaryEmail: String

        public var country: String

        public var floorNo: String?

        public enum CodingKeys: String, CodingKey {
            case address2

            case firstName = "first_name"

            case middleName = "middle_name"

            case title

            case landmark

            case gender

            case alternateMobileNumber = "alternate_mobile_number"

            case externalCustomerCode = "external_customer_code"

            case lastName = "last_name"

            case primaryMobileNumber = "primary_mobile_number"

            case geoLocation = "geo_location"

            case addressType = "address_type"

            case countryCode = "country_code"

            case pincode

            case slot

            case alternateEmail = "alternate_email"

            case state

            case customerCode = "customer_code"

            case city

            case address1

            case houseNo = "house_no"

            case stateCode = "state_code"

            case shippingType = "shipping_type"

            case primaryEmail = "primary_email"

            case country

            case floorNo = "floor_no"
        }

        public init(address1: String, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, geoLocation: [String: Any]? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, shippingType: String? = nil, slot: [[String: Any]]? = nil, state: String, stateCode: String? = nil, title: String? = nil) {
            self.address2 = address2

            self.firstName = firstName

            self.middleName = middleName

            self.title = title

            self.landmark = landmark

            self.gender = gender

            self.alternateMobileNumber = alternateMobileNumber

            self.externalCustomerCode = externalCustomerCode

            self.lastName = lastName

            self.primaryMobileNumber = primaryMobileNumber

            self.geoLocation = geoLocation

            self.addressType = addressType

            self.countryCode = countryCode

            self.pincode = pincode

            self.slot = slot

            self.alternateEmail = alternateEmail

            self.state = state

            self.customerCode = customerCode

            self.city = city

            self.address1 = address1

            self.houseNo = houseNo

            self.stateCode = stateCode

            self.shippingType = shippingType

            self.primaryEmail = primaryEmail

            self.country = country

            self.floorNo = floorNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)

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

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                slot = try container.decode([[String: Any]].self, forKey: .slot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateCode = try container.decode(String.self, forKey: .stateCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingType = try container.decode(String.self, forKey: .shippingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            country = try container.decode(String.self, forKey: .country)

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(slot, forKey: .slot)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(shippingType, forKey: .shippingType)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
        }
    }
}
