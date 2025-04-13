

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BillingInfo
        Used By: Order
    */

    class BillingInfo: Codable {
        
        
        public var phone: String?
        
        public var alternateMobileNumber: String?
        
        public var state: String?
        
        public var customerCode: String?
        
        public var middleName: String?
        
        public var primaryMobileNumber: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var houseNo: String?
        
        public var firstName: String?
        
        public var title: String?
        
        public var country: String?
        
        public var stateCode: String?
        
        public var city: String?
        
        public var externalCustomerCode: String?
        
        public var floorNo: String?
        
        public var alternateEmail: String?
        
        public var address: String?
        
        public var area: String?
        
        public var address1: String?
        
        public var pincode: String?
        
        public var primaryEmail: String?
        
        public var address2: String?
        
        public var landmark: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case alternateMobileNumber = "alternate_mobile_number"
            
            case state = "state"
            
            case customerCode = "customer_code"
            
            case middleName = "middle_name"
            
            case primaryMobileNumber = "primary_mobile_number"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case houseNo = "house_no"
            
            case firstName = "first_name"
            
            case title = "title"
            
            case country = "country"
            
            case stateCode = "state_code"
            
            case city = "city"
            
            case externalCustomerCode = "external_customer_code"
            
            case floorNo = "floor_no"
            
            case alternateEmail = "alternate_email"
            
            case address = "address"
            
            case area = "area"
            
            case address1 = "address1"
            
            case pincode = "pincode"
            
            case primaryEmail = "primary_email"
            
            case address2 = "address2"
            
            case landmark = "landmark"
            
            case countryCode = "country_code"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, area: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String? = nil, floorNo: String? = nil, gender: String? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, phone: String? = nil, pincode: String? = nil, primaryEmail: String? = nil, primaryMobileNumber: String? = nil, state: String? = nil, stateCode: String? = nil, title: String? = nil) {
            
            self.phone = phone
            
            self.alternateMobileNumber = alternateMobileNumber
            
            self.state = state
            
            self.customerCode = customerCode
            
            self.middleName = middleName
            
            self.primaryMobileNumber = primaryMobileNumber
            
            self.lastName = lastName
            
            self.gender = gender
            
            self.houseNo = houseNo
            
            self.firstName = firstName
            
            self.title = title
            
            self.country = country
            
            self.stateCode = stateCode
            
            self.city = city
            
            self.externalCustomerCode = externalCustomerCode
            
            self.floorNo = floorNo
            
            self.alternateEmail = alternateEmail
            
            self.address = address
            
            self.area = area
            
            self.address1 = address1
            
            self.pincode = pincode
            
            self.primaryEmail = primaryEmail
            
            self.address2 = address2
            
            self.landmark = landmark
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerCode = try container.decode(String.self, forKey: .customerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    houseNo = try container.decode(String.self, forKey: .houseNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floorNo = try container.decode(String.self, forKey: .floorNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateEmail = try container.decode(String.self, forKey: .alternateEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryEmail = try container.decode(String.self, forKey: .primaryEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(customerCode, forKey: .customerCode)
            
            
            
            
            try? container.encodeIfPresent(middleName, forKey: .middleName)
            
            
            
            
            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(houseNo, forKey: .houseNo)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)
            
            
            
            
            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
            
            
            
            
            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BillingInfo
        Used By: Order
    */

    class BillingInfo: Codable {
        
        
        public var phone: String?
        
        public var alternateMobileNumber: String?
        
        public var state: String?
        
        public var customerCode: String?
        
        public var middleName: String?
        
        public var primaryMobileNumber: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var houseNo: String?
        
        public var firstName: String?
        
        public var title: String?
        
        public var country: String?
        
        public var stateCode: String?
        
        public var city: String?
        
        public var externalCustomerCode: String?
        
        public var floorNo: String?
        
        public var alternateEmail: String?
        
        public var address: String?
        
        public var area: String?
        
        public var address1: String?
        
        public var pincode: String?
        
        public var primaryEmail: String?
        
        public var address2: String?
        
        public var landmark: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case alternateMobileNumber = "alternate_mobile_number"
            
            case state = "state"
            
            case customerCode = "customer_code"
            
            case middleName = "middle_name"
            
            case primaryMobileNumber = "primary_mobile_number"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case houseNo = "house_no"
            
            case firstName = "first_name"
            
            case title = "title"
            
            case country = "country"
            
            case stateCode = "state_code"
            
            case city = "city"
            
            case externalCustomerCode = "external_customer_code"
            
            case floorNo = "floor_no"
            
            case alternateEmail = "alternate_email"
            
            case address = "address"
            
            case area = "area"
            
            case address1 = "address1"
            
            case pincode = "pincode"
            
            case primaryEmail = "primary_email"
            
            case address2 = "address2"
            
            case landmark = "landmark"
            
            case countryCode = "country_code"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, area: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String? = nil, floorNo: String? = nil, gender: String? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, phone: String? = nil, pincode: String? = nil, primaryEmail: String? = nil, primaryMobileNumber: String? = nil, state: String? = nil, stateCode: String? = nil, title: String? = nil) {
            
            self.phone = phone
            
            self.alternateMobileNumber = alternateMobileNumber
            
            self.state = state
            
            self.customerCode = customerCode
            
            self.middleName = middleName
            
            self.primaryMobileNumber = primaryMobileNumber
            
            self.lastName = lastName
            
            self.gender = gender
            
            self.houseNo = houseNo
            
            self.firstName = firstName
            
            self.title = title
            
            self.country = country
            
            self.stateCode = stateCode
            
            self.city = city
            
            self.externalCustomerCode = externalCustomerCode
            
            self.floorNo = floorNo
            
            self.alternateEmail = alternateEmail
            
            self.address = address
            
            self.area = area
            
            self.address1 = address1
            
            self.pincode = pincode
            
            self.primaryEmail = primaryEmail
            
            self.address2 = address2
            
            self.landmark = landmark
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerCode = try container.decode(String.self, forKey: .customerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    houseNo = try container.decode(String.self, forKey: .houseNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floorNo = try container.decode(String.self, forKey: .floorNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateEmail = try container.decode(String.self, forKey: .alternateEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryEmail = try container.decode(String.self, forKey: .primaryEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(customerCode, forKey: .customerCode)
            
            
            
            
            try? container.encodeIfPresent(middleName, forKey: .middleName)
            
            
            
            
            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(houseNo, forKey: .houseNo)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)
            
            
            
            
            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
            
            
            
            
            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


