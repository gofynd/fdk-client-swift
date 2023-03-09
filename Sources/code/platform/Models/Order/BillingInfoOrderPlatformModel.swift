

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var floorNo: String

        public var countryCode: String

        public var title: String?

        public var primaryEmail: String

        public var state: String

        public var lastName: String?

        public var customerCode: String?

        public var gender: String?

        public var city: String

        public var externalCustomerCode: String?

        public var houseNo: String

        public var firstName: String

        public var middleName: String?

        public var pincode: String

        public var address1: String

        public var stateCode: String

        public var primaryMobileNumber: String

        public var alternateMobileNumber: String?

        public var country: String

        public var alternateEmail: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case floorNo = "floor_no"

            case countryCode = "country_code"

            case title

            case primaryEmail = "primary_email"

            case state

            case lastName = "last_name"

            case customerCode = "customer_code"

            case gender

            case city

            case externalCustomerCode = "external_customer_code"

            case houseNo = "house_no"

            case firstName = "first_name"

            case middleName = "middle_name"

            case pincode

            case address1

            case stateCode = "state_code"

            case primaryMobileNumber = "primary_mobile_number"

            case alternateMobileNumber = "alternate_mobile_number"

            case country

            case alternateEmail = "alternate_email"

            case address2
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.floorNo = floorNo

            self.countryCode = countryCode

            self.title = title

            self.primaryEmail = primaryEmail

            self.state = state

            self.lastName = lastName

            self.customerCode = customerCode

            self.gender = gender

            self.city = city

            self.externalCustomerCode = externalCustomerCode

            self.houseNo = houseNo

            self.firstName = firstName

            self.middleName = middleName

            self.pincode = pincode

            self.address1 = address1

            self.stateCode = stateCode

            self.primaryMobileNumber = primaryMobileNumber

            self.alternateMobileNumber = alternateMobileNumber

            self.country = country

            self.alternateEmail = alternateEmail

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            floorNo = try container.decode(String.self, forKey: .floorNo)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            houseNo = try container.decode(String.self, forKey: .houseNo)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var floorNo: String

        public var countryCode: String

        public var title: String?

        public var primaryEmail: String

        public var state: String

        public var lastName: String?

        public var customerCode: String?

        public var gender: String?

        public var city: String

        public var externalCustomerCode: String?

        public var houseNo: String

        public var firstName: String

        public var middleName: String?

        public var pincode: String

        public var address1: String

        public var stateCode: String

        public var primaryMobileNumber: String

        public var alternateMobileNumber: String?

        public var country: String

        public var alternateEmail: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case floorNo = "floor_no"

            case countryCode = "country_code"

            case title

            case primaryEmail = "primary_email"

            case state

            case lastName = "last_name"

            case customerCode = "customer_code"

            case gender

            case city

            case externalCustomerCode = "external_customer_code"

            case houseNo = "house_no"

            case firstName = "first_name"

            case middleName = "middle_name"

            case pincode

            case address1

            case stateCode = "state_code"

            case primaryMobileNumber = "primary_mobile_number"

            case alternateMobileNumber = "alternate_mobile_number"

            case country

            case alternateEmail = "alternate_email"

            case address2
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.floorNo = floorNo

            self.countryCode = countryCode

            self.title = title

            self.primaryEmail = primaryEmail

            self.state = state

            self.lastName = lastName

            self.customerCode = customerCode

            self.gender = gender

            self.city = city

            self.externalCustomerCode = externalCustomerCode

            self.houseNo = houseNo

            self.firstName = firstName

            self.middleName = middleName

            self.pincode = pincode

            self.address1 = address1

            self.stateCode = stateCode

            self.primaryMobileNumber = primaryMobileNumber

            self.alternateMobileNumber = alternateMobileNumber

            self.country = country

            self.alternateEmail = alternateEmail

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            floorNo = try container.decode(String.self, forKey: .floorNo)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            state = try container.decode(String.self, forKey: .state)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            houseNo = try container.decode(String.self, forKey: .houseNo)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
