

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var floorNo: String?

        public var externalCustomerCode: String?

        public var customerCode: String?

        public var country: String

        public var gender: String?

        public var countryCode: String?

        public var address2: String?

        public var stateCode: String?

        public var state: String

        public var city: String

        public var address1: String

        public var primaryEmail: String

        public var alternateEmail: String?

        public var firstName: String

        public var middleName: String?

        public var pincode: String

        public var houseNo: String?

        public var alternateMobileNumber: String?

        public var lastName: String?

        public var title: String?

        public var primaryMobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case floorNo = "floor_no"

            case externalCustomerCode = "external_customer_code"

            case customerCode = "customer_code"

            case country

            case gender

            case countryCode = "country_code"

            case address2

            case stateCode = "state_code"

            case state

            case city

            case address1

            case primaryEmail = "primary_email"

            case alternateEmail = "alternate_email"

            case firstName = "first_name"

            case middleName = "middle_name"

            case pincode

            case houseNo = "house_no"

            case alternateMobileNumber = "alternate_mobile_number"

            case lastName = "last_name"

            case title

            case primaryMobileNumber = "primary_mobile_number"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, houseNo: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String? = nil, title: String? = nil) {
            self.floorNo = floorNo

            self.externalCustomerCode = externalCustomerCode

            self.customerCode = customerCode

            self.country = country

            self.gender = gender

            self.countryCode = countryCode

            self.address2 = address2

            self.stateCode = stateCode

            self.state = state

            self.city = city

            self.address1 = address1

            self.primaryEmail = primaryEmail

            self.alternateEmail = alternateEmail

            self.firstName = firstName

            self.middleName = middleName

            self.pincode = pincode

            self.houseNo = houseNo

            self.alternateMobileNumber = alternateMobileNumber

            self.lastName = lastName

            self.title = title

            self.primaryMobileNumber = primaryMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                address2 = try container.decode(String.self, forKey: .address2)

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

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

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
                lastName = try container.decode(String.self, forKey: .lastName)

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

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var floorNo: String?

        public var externalCustomerCode: String?

        public var customerCode: String?

        public var country: String

        public var gender: String?

        public var countryCode: String?

        public var address2: String?

        public var stateCode: String?

        public var state: String

        public var city: String

        public var address1: String

        public var primaryEmail: String

        public var alternateEmail: String?

        public var firstName: String

        public var middleName: String?

        public var pincode: String

        public var houseNo: String?

        public var alternateMobileNumber: String?

        public var lastName: String?

        public var title: String?

        public var primaryMobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case floorNo = "floor_no"

            case externalCustomerCode = "external_customer_code"

            case customerCode = "customer_code"

            case country

            case gender

            case countryCode = "country_code"

            case address2

            case stateCode = "state_code"

            case state

            case city

            case address1

            case primaryEmail = "primary_email"

            case alternateEmail = "alternate_email"

            case firstName = "first_name"

            case middleName = "middle_name"

            case pincode

            case houseNo = "house_no"

            case alternateMobileNumber = "alternate_mobile_number"

            case lastName = "last_name"

            case title

            case primaryMobileNumber = "primary_mobile_number"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, houseNo: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String? = nil, title: String? = nil) {
            self.floorNo = floorNo

            self.externalCustomerCode = externalCustomerCode

            self.customerCode = customerCode

            self.country = country

            self.gender = gender

            self.countryCode = countryCode

            self.address2 = address2

            self.stateCode = stateCode

            self.state = state

            self.city = city

            self.address1 = address1

            self.primaryEmail = primaryEmail

            self.alternateEmail = alternateEmail

            self.firstName = firstName

            self.middleName = middleName

            self.pincode = pincode

            self.houseNo = houseNo

            self.alternateMobileNumber = alternateMobileNumber

            self.lastName = lastName

            self.title = title

            self.primaryMobileNumber = primaryMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
                address2 = try container.decode(String.self, forKey: .address2)

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

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

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
                lastName = try container.decode(String.self, forKey: .lastName)

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

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
        }
    }
}
