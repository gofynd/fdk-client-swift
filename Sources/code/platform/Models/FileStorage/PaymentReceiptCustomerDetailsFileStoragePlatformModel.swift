

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptCustomerDetails
        Used By: FileStorage
    */

    class PaymentReceiptCustomerDetails: Codable {
        
        
        public var id: String?
        
        public var emailId: String?
        
        public var lastName: String?
        
        public var firstName: String?
        
        public var mobileNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case emailId = "email_id"
            
            case lastName = "last_name"
            
            case firstName = "first_name"
            
            case mobileNumber = "mobile_number"
            
        }

        public init(emailId: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, mobileNumber: String? = nil) {
            
            self.id = id
            
            self.emailId = emailId
            
            self.lastName = lastName
            
            self.firstName = firstName
            
            self.mobileNumber = mobileNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailId = try container.decode(String.self, forKey: .emailId)
                
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
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptCustomerDetails
        Used By: FileStorage
    */

    class PaymentReceiptCustomerDetails: Codable {
        
        
        public var id: String?
        
        public var emailId: String?
        
        public var lastName: String?
        
        public var firstName: String?
        
        public var mobileNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case emailId = "email_id"
            
            case lastName = "last_name"
            
            case firstName = "first_name"
            
            case mobileNumber = "mobile_number"
            
        }

        public init(emailId: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, mobileNumber: String? = nil) {
            
            self.id = id
            
            self.emailId = emailId
            
            self.lastName = lastName
            
            self.firstName = firstName
            
            self.mobileNumber = mobileNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailId = try container.decode(String.self, forKey: .emailId)
                
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
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
        }
        
    }
}


