

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: CompanyInfo
        Used By: Billing
    */

    class CompanyInfo: Codable {
        
        
        public var companyName: String?
        
        public var gstin: String?
        
        public var address: String?
        
        public var addressDetails: AddressDetails?
        
        public var pan: String?
        
        public var phone: String?
        
        public var email: String?
        
        public var cin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyName = "company_name"
            
            case gstin = "gstin"
            
            case address = "address"
            
            case addressDetails = "address_details"
            
            case pan = "pan"
            
            case phone = "phone"
            
            case email = "email"
            
            case cin = "cin"
            
        }

        public init(address: String? = nil, addressDetails: AddressDetails? = nil, cin: String? = nil, companyName: String? = nil, email: String? = nil, gstin: String? = nil, pan: String? = nil, phone: String? = nil) {
            
            self.companyName = companyName
            
            self.gstin = gstin
            
            self.address = address
            
            self.addressDetails = addressDetails
            
            self.pan = pan
            
            self.phone = phone
            
            self.email = email
            
            self.cin = cin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
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
                    addressDetails = try container.decode(AddressDetails.self, forKey: .addressDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cin = try container.decode(String.self, forKey: .cin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(addressDetails, forKey: .addressDetails)
            
            
            
            
            try? container.encodeIfPresent(pan, forKey: .pan)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(cin, forKey: .cin)
            
            
        }
        
    }
}




