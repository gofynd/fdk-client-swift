

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ManagerResult
        Used By: Serviceability
    */

    class ManagerResult: Codable {
        
        
        public var email: String?
        
        public var mobileNo: MobileNo?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case mobileNo = "mobile_no"
            
            case name = "name"
            
        }

        public init(email: String? = nil, mobileNo: MobileNo? = nil, name: String? = nil) {
            
            self.email = email
            
            self.mobileNo = mobileNo
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNo = try container.decode(MobileNo.self, forKey: .mobileNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ManagerResult
        Used By: Serviceability
    */

    class ManagerResult: Codable {
        
        
        public var email: String?
        
        public var mobileNo: MobileNo?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case mobileNo = "mobile_no"
            
            case name = "name"
            
        }

        public init(email: String? = nil, mobileNo: MobileNo? = nil, name: String? = nil) {
            
            self.email = email
            
            self.mobileNo = mobileNo
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNo = try container.decode(MobileNo.self, forKey: .mobileNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


