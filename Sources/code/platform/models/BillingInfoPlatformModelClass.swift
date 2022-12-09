

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: OrderManage
     */

    class BillingInfo: Codable {
        public var primaryEmail: String

        public var address2: String?

        public var country: String

        public var alternateMobileNumber: String?

        public var floorNo: String

        public var firstName: String

        public var pincode: String

        public var city: String

        public var address1: String

        public var state: String

        public var primaryMobileNumber: String

        public var stateCode: String

        public var houseNo: String

        public var countryCode: String

        public var externalCustomerCode: String?

        public var lastName: String?

        public var title: String?

        public var customerCode: String?

        public var alternateEmail: String?

        public var middleName: String?

        public var gender: String?

        public enum CodingKeys: String, CodingKey {
            case primaryEmail = "primary_email"

            case address2

            case country

            case alternateMobileNumber = "alternate_mobile_number"

            case floorNo = "floor_no"

            case firstName = "first_name"

            case pincode

            case city

            case address1

            case state

            case primaryMobileNumber = "primary_mobile_number"

            case stateCode = "state_code"

            case houseNo = "house_no"

            case countryCode = "country_code"

            case externalCustomerCode = "external_customer_code"

            case lastName = "last_name"

            case title

            case customerCode = "customer_code"

            case alternateEmail = "alternate_email"

            case middleName = "middle_name"

            case gender
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.primaryEmail = primaryEmail

            self.address2 = address2

            self.country = country

            self.alternateMobileNumber = alternateMobileNumber

            self.floorNo = floorNo

            self.firstName = firstName

            self.pincode = pincode

            self.city = city

            self.address1 = address1

            self.state = state

            self.primaryMobileNumber = primaryMobileNumber

            self.stateCode = stateCode

            self.houseNo = houseNo

            self.countryCode = countryCode

            self.externalCustomerCode = externalCustomerCode

            self.lastName = lastName

            self.title = title

            self.customerCode = customerCode

            self.alternateEmail = alternateEmail

            self.middleName = middleName

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            floorNo = try container.decode(String.self, forKey: .floorNo)

            firstName = try container.decode(String.self, forKey: .firstName)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            houseNo = try container.decode(String.self, forKey: .houseNo)

            countryCode = try container.decode(String.self, forKey: .countryCode)

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

            do {
                title = try container.decode(String.self, forKey: .title)

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
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(gender, forKey: .gender)
        }
    }
}
