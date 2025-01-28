

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleMeta
        Used By: Order
    */

    class RuleMeta: Codable {
        
        
        public var department: Department?
        
        public var l3: L3?
        
        public var restrictForwardServiceability: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case department = "department"
            
            case l3 = "l3"
            
            case restrictForwardServiceability = "restrict_forward_serviceability"
            
        }

        public init(department: Department? = nil, l3: L3? = nil, restrictForwardServiceability: Bool? = nil) {
            
            self.department = department
            
            self.l3 = l3
            
            self.restrictForwardServiceability = restrictForwardServiceability
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    department = try container.decode(Department.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(L3.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictForwardServiceability = try container.decode(Bool.self, forKey: .restrictForwardServiceability)
                
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
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServiceability, forKey: .restrictForwardServiceability)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleMeta
        Used By: Order
    */

    class RuleMeta: Codable {
        
        
        public var department: Department?
        
        public var l3: L3?
        
        public var restrictForwardServiceability: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case department = "department"
            
            case l3 = "l3"
            
            case restrictForwardServiceability = "restrict_forward_serviceability"
            
        }

        public init(department: Department? = nil, l3: L3? = nil, restrictForwardServiceability: Bool? = nil) {
            
            self.department = department
            
            self.l3 = l3
            
            self.restrictForwardServiceability = restrictForwardServiceability
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    department = try container.decode(Department.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(L3.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictForwardServiceability = try container.decode(Bool.self, forKey: .restrictForwardServiceability)
                
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
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServiceability, forKey: .restrictForwardServiceability)
            
            
        }
        
    }
}


