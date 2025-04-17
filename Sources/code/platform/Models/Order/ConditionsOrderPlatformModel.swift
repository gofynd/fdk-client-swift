

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Conditions
        Used By: Order
    */

    class Conditions: Codable {
        
        
        public var department: String?
        
        public var l3: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case department = "department"
            
            case l3 = "l3"
            
        }

        public init(department: String? = nil, l3: String? = nil) {
            
            self.department = department
            
            self.l3 = l3
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(String.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Conditions
        Used By: Order
    */

    class Conditions: Codable {
        
        
        public var department: String?
        
        public var l3: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case department = "department"
            
            case l3 = "l3"
            
        }

        public init(department: String? = nil, l3: String? = nil) {
            
            self.department = department
            
            self.l3 = l3
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(String.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
        }
        
    }
}


