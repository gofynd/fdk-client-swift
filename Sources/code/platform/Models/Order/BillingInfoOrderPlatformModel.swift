

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var city: String

        public var primaryEmail: String

        public var floorNo: String

        public var houseNo: String

        public var country: String

        public var state: String

        public var stateCode: String

        public var middleName: String?

        public var countryCode: String

        public var address2: String?

        public var pincode: String

        public var firstName: String

        public var lastName: String?

        public var primaryMobileNumber: String

        public var title: String?

        public var address1: String

        public var externalCustomerCode: String?

        public var alternateEmail: String?

        public var alternateMobileNumber: String?

        public var gender: String?

        public var customerCode: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case primaryEmail = "primary_email"

            case floorNo = "floor_no"

            case houseNo = "house_no"

            case country

            case state

            case stateCode = "state_code"

            case middleName = "middle_name"

            case countryCode = "country_code"

            case address2

            case pincode

            case firstName = "first_name"

            case lastName = "last_name"

            case primaryMobileNumber = "primary_mobile_number"

            case title

            case address1

            case externalCustomerCode = "external_customer_code"

            case alternateEmail = "alternate_email"

            case alternateMobileNumber = "alternate_mobile_number"

            case gender

            case customerCode = "customer_code"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.city = city

            self.primaryEmail = primaryEmail

            self.floorNo = floorNo

            self.houseNo = houseNo

            self.country = country

            self.state = state

            self.stateCode = stateCode

            self.middleName = middleName

            self.countryCode = countryCode

            self.address2 = address2

            self.pincode = pincode

            self.firstName = firstName

            self.lastName = lastName

            self.primaryMobileNumber = primaryMobileNumber

            self.title = title

            self.address1 = address1

            self.externalCustomerCode = externalCustomerCode

            self.alternateEmail = alternateEmail

            self.alternateMobileNumber = alternateMobileNumber

            self.gender = gender

            self.customerCode = customerCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            floorNo = try container.decode(String.self, forKey: .floorNo)

            houseNo = try container.decode(String.self, forKey: .houseNo)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

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

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

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
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var city: String

        public var primaryEmail: String

        public var floorNo: String

        public var houseNo: String

        public var country: String

        public var state: String

        public var stateCode: String

        public var middleName: String?

        public var countryCode: String

        public var address2: String?

        public var pincode: String

        public var firstName: String

        public var lastName: String?

        public var primaryMobileNumber: String

        public var title: String?

        public var address1: String

        public var externalCustomerCode: String?

        public var alternateEmail: String?

        public var alternateMobileNumber: String?

        public var gender: String?

        public var customerCode: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case primaryEmail = "primary_email"

            case floorNo = "floor_no"

            case houseNo = "house_no"

            case country

            case state

            case stateCode = "state_code"

            case middleName = "middle_name"

            case countryCode = "country_code"

            case address2

            case pincode

            case firstName = "first_name"

            case lastName = "last_name"

            case primaryMobileNumber = "primary_mobile_number"

            case title

            case address1

            case externalCustomerCode = "external_customer_code"

            case alternateEmail = "alternate_email"

            case alternateMobileNumber = "alternate_mobile_number"

            case gender

            case customerCode = "customer_code"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.city = city

            self.primaryEmail = primaryEmail

            self.floorNo = floorNo

            self.houseNo = houseNo

            self.country = country

            self.state = state

            self.stateCode = stateCode

            self.middleName = middleName

            self.countryCode = countryCode

            self.address2 = address2

            self.pincode = pincode

            self.firstName = firstName

            self.lastName = lastName

            self.primaryMobileNumber = primaryMobileNumber

            self.title = title

            self.address1 = address1

            self.externalCustomerCode = externalCustomerCode

            self.alternateEmail = alternateEmail

            self.alternateMobileNumber = alternateMobileNumber

            self.gender = gender

            self.customerCode = customerCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            floorNo = try container.decode(String.self, forKey: .floorNo)

            houseNo = try container.decode(String.self, forKey: .houseNo)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

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

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

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
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)
        }
    }
}
