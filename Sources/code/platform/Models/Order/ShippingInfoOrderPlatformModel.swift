

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShippingInfo
         Used By: Order
     */

    class ShippingInfo: Codable {
        public var firstName: String

        public var state: String

        public var landmark: String?

        public var lastName: String?

        public var houseNo: String?

        public var geoLocation: [String: Any]?

        public var address2: String?

        public var floorNo: String?

        public var alternateEmail: String?

        public var primaryEmail: String

        public var city: String

        public var title: String?

        public var countryCode: String?

        public var addressType: String?

        public var slot: [[String: Any]]?

        public var middleName: String?

        public var primaryMobileNumber: String

        public var country: String

        public var shippingType: String?

        public var alternateMobileNumber: String?

        public var stateCode: String?

        public var address1: String

        public var gender: String?

        public var externalCustomerCode: String?

        public var customerCode: String?

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case state

            case landmark

            case lastName = "last_name"

            case houseNo = "house_no"

            case geoLocation = "geo_location"

            case address2

            case floorNo = "floor_no"

            case alternateEmail = "alternate_email"

            case primaryEmail = "primary_email"

            case city

            case title

            case countryCode = "country_code"

            case addressType = "address_type"

            case slot

            case middleName = "middle_name"

            case primaryMobileNumber = "primary_mobile_number"

            case country

            case shippingType = "shipping_type"

            case alternateMobileNumber = "alternate_mobile_number"

            case stateCode = "state_code"

            case address1

            case gender

            case externalCustomerCode = "external_customer_code"

            case customerCode = "customer_code"

            case pincode
        }

        public init(address1: String, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, geoLocation: [String: Any]? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, shippingType: String? = nil, slot: [[String: Any]]? = nil, state: String, stateCode: String? = nil, title: String? = nil) {
            self.firstName = firstName

            self.state = state

            self.landmark = landmark

            self.lastName = lastName

            self.houseNo = houseNo

            self.geoLocation = geoLocation

            self.address2 = address2

            self.floorNo = floorNo

            self.alternateEmail = alternateEmail

            self.primaryEmail = primaryEmail

            self.city = city

            self.title = title

            self.countryCode = countryCode

            self.addressType = addressType

            self.slot = slot

            self.middleName = middleName

            self.primaryMobileNumber = primaryMobileNumber

            self.country = country

            self.shippingType = shippingType

            self.alternateMobileNumber = alternateMobileNumber

            self.stateCode = stateCode

            self.address1 = address1

            self.gender = gender

            self.externalCustomerCode = externalCustomerCode

            self.customerCode = customerCode

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)

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

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

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

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                title = try container.decode(String.self, forKey: .title)

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

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slot = try container.decode([[String: Any]].self, forKey: .slot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            country = try container.decode(String.self, forKey: .country)

            do {
                shippingType = try container.decode(String.self, forKey: .shippingType)

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
                stateCode = try container.decode(String.self, forKey: .stateCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(slot, forKey: .slot)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(shippingType, forKey: .shippingType)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShippingInfo
         Used By: Order
     */

    class ShippingInfo: Codable {
        public var firstName: String

        public var state: String

        public var landmark: String?

        public var lastName: String?

        public var houseNo: String?

        public var geoLocation: [String: Any]?

        public var address2: String?

        public var floorNo: String?

        public var alternateEmail: String?

        public var primaryEmail: String

        public var city: String

        public var title: String?

        public var countryCode: String?

        public var addressType: String?

        public var slot: [[String: Any]]?

        public var middleName: String?

        public var primaryMobileNumber: String

        public var country: String

        public var shippingType: String?

        public var alternateMobileNumber: String?

        public var stateCode: String?

        public var address1: String

        public var gender: String?

        public var externalCustomerCode: String?

        public var customerCode: String?

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case state

            case landmark

            case lastName = "last_name"

            case houseNo = "house_no"

            case geoLocation = "geo_location"

            case address2

            case floorNo = "floor_no"

            case alternateEmail = "alternate_email"

            case primaryEmail = "primary_email"

            case city

            case title

            case countryCode = "country_code"

            case addressType = "address_type"

            case slot

            case middleName = "middle_name"

            case primaryMobileNumber = "primary_mobile_number"

            case country

            case shippingType = "shipping_type"

            case alternateMobileNumber = "alternate_mobile_number"

            case stateCode = "state_code"

            case address1

            case gender

            case externalCustomerCode = "external_customer_code"

            case customerCode = "customer_code"

            case pincode
        }

        public init(address1: String, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, geoLocation: [String: Any]? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, shippingType: String? = nil, slot: [[String: Any]]? = nil, state: String, stateCode: String? = nil, title: String? = nil) {
            self.firstName = firstName

            self.state = state

            self.landmark = landmark

            self.lastName = lastName

            self.houseNo = houseNo

            self.geoLocation = geoLocation

            self.address2 = address2

            self.floorNo = floorNo

            self.alternateEmail = alternateEmail

            self.primaryEmail = primaryEmail

            self.city = city

            self.title = title

            self.countryCode = countryCode

            self.addressType = addressType

            self.slot = slot

            self.middleName = middleName

            self.primaryMobileNumber = primaryMobileNumber

            self.country = country

            self.shippingType = shippingType

            self.alternateMobileNumber = alternateMobileNumber

            self.stateCode = stateCode

            self.address1 = address1

            self.gender = gender

            self.externalCustomerCode = externalCustomerCode

            self.customerCode = customerCode

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)

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

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

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

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            city = try container.decode(String.self, forKey: .city)

            do {
                title = try container.decode(String.self, forKey: .title)

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

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slot = try container.decode([[String: Any]].self, forKey: .slot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            country = try container.decode(String.self, forKey: .country)

            do {
                shippingType = try container.decode(String.self, forKey: .shippingType)

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
                stateCode = try container.decode(String.self, forKey: .stateCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(slot, forKey: .slot)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(shippingType, forKey: .shippingType)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
