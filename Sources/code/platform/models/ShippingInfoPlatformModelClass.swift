

import Foundation
public extension PlatformClient {
    /*
        Model: ShippingInfo
        Used By: Order
    */

    class ShippingInfo: Codable {
        
        
        public var title: String?
        
        public var alternateEmail: String?
        
        public var floorNo: String?
        
        public var city: String
        
        public var gender: String?
        
        public var address2: String?
        
        public var alternateMobileNumber: String?
        
        public var geoLocation: [String: Any]?
        
        public var addressType: String?
        
        public var shippingType: String?
        
        public var country: String
        
        public var slot: [[String: Any]]?
        
        public var externalCustomerCode: String?
        
        public var lastName: String?
        
        public var state: String
        
        public var firstName: String
        
        public var houseNo: String?
        
        public var address1: String
        
        public var pincode: String
        
        public var countryCode: String?
        
        public var middleName: String?
        
        public var primaryMobileNumber: String
        
        public var primaryEmail: String
        
        public var customerCode: String?
        
        public var stateCode: String?
        
        public var landmark: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case alternateEmail = "alternate_email"
            
            case floorNo = "floor_no"
            
            case city = "city"
            
            case gender = "gender"
            
            case address2 = "address2"
            
            case alternateMobileNumber = "alternate_mobile_number"
            
            case geoLocation = "geo_location"
            
            case addressType = "address_type"
            
            case shippingType = "shipping_type"
            
            case country = "country"
            
            case slot = "slot"
            
            case externalCustomerCode = "external_customer_code"
            
            case lastName = "last_name"
            
            case state = "state"
            
            case firstName = "first_name"
            
            case houseNo = "house_no"
            
            case address1 = "address1"
            
            case pincode = "pincode"
            
            case countryCode = "country_code"
            
            case middleName = "middle_name"
            
            case primaryMobileNumber = "primary_mobile_number"
            
            case primaryEmail = "primary_email"
            
            case customerCode = "customer_code"
            
            case stateCode = "state_code"
            
            case landmark = "landmark"
            
        }

        public init(address1: String, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, geoLocation: [String: Any]? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, shippingType: String? = nil, slot: [[String: Any]]? = nil, state: String, stateCode: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.alternateEmail = alternateEmail
            
            self.floorNo = floorNo
            
            self.city = city
            
            self.gender = gender
            
            self.address2 = address2
            
            self.alternateMobileNumber = alternateMobileNumber
            
            self.geoLocation = geoLocation
            
            self.addressType = addressType
            
            self.shippingType = shippingType
            
            self.country = country
            
            self.slot = slot
            
            self.externalCustomerCode = externalCustomerCode
            
            self.lastName = lastName
            
            self.state = state
            
            self.firstName = firstName
            
            self.houseNo = houseNo
            
            self.address1 = address1
            
            self.pincode = pincode
            
            self.countryCode = countryCode
            
            self.middleName = middleName
            
            self.primaryMobileNumber = primaryMobileNumber
            
            self.primaryEmail = primaryEmail
            
            self.customerCode = customerCode
            
            self.stateCode = stateCode
            
            self.landmark = landmark
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
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
                    floorNo = try container.decode(String.self, forKey: .floorNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
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
                    alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shippingType = try container.decode(String.self, forKey: .shippingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    slot = try container.decode([[String: Any]].self, forKey: .slot)
                
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
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                firstName = try container.decode(String.self, forKey: .firstName)
                
            
            
            
                do {
                    houseNo = try container.decode(String.self, forKey: .houseNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
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
                
            
            
                primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
                
            
            
            
                primaryEmail = try container.decode(String.self, forKey: .primaryEmail)
                
            
            
            
                do {
                    customerCode = try container.decode(String.self, forKey: .customerCode)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)
            
            
            
            
            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(shippingType, forKey: .shippingType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(slot, forKey: .slot)
            
            
            
            
            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(houseNo, forKey: .houseNo)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(middleName, forKey: .middleName)
            
            
            
            
            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)
            
            
            
            
            try? container.encodeIfPresent(customerCode, forKey: .customerCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
        }
        
    }
}
