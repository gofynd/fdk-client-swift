

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ContactInfo
        Used By: Theme
    */

    class ContactInfo: Codable {
        
        
        public var developerContact: [String]?
        
        public var sellerContact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case developerContact = "developer_contact"
            
            case sellerContact = "seller_contact"
            
        }

        public init(developerContact: [String]? = nil, sellerContact: String? = nil) {
            
            self.developerContact = developerContact
            
            self.sellerContact = sellerContact
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    developerContact = try container.decode([String].self, forKey: .developerContact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerContact = try container.decode(String.self, forKey: .sellerContact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(developerContact, forKey: .developerContact)
            
            
            
            
            try? container.encodeIfPresent(sellerContact, forKey: .sellerContact)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ContactInfo
        Used By: Theme
    */

    class ContactInfo: Codable {
        
        
        public var developerContact: [String]?
        
        public var sellerContact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case developerContact = "developer_contact"
            
            case sellerContact = "seller_contact"
            
        }

        public init(developerContact: [String]? = nil, sellerContact: String? = nil) {
            
            self.developerContact = developerContact
            
            self.sellerContact = sellerContact
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    developerContact = try container.decode([String].self, forKey: .developerContact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerContact = try container.decode(String.self, forKey: .sellerContact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(developerContact, forKey: .developerContact)
            
            
            
            
            try? container.encodeIfPresent(sellerContact, forKey: .sellerContact)
            
            
        }
        
    }
}


