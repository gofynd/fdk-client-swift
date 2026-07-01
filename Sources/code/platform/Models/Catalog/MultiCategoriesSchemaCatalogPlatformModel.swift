

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MultiCategoriesSchema
        Used By: Catalog
    */

    class MultiCategoriesSchema: Codable {
        
        
        public var l1: Int?
        
        public var l2: Int?
        
        public var l3: Int?
        
        public var isActive: Bool?
        
        public var department: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case l1 = "l1"
            
            case l2 = "l2"
            
            case l3 = "l3"
            
            case isActive = "is_active"
            
            case department = "department"
            
        }

        public init(department: Int? = nil, isActive: Bool? = nil, l1: Int? = nil, l2: Int? = nil, l3: Int? = nil) {
            
            self.l1 = l1
            
            self.l2 = l2
            
            self.l3 = l3
            
            self.isActive = isActive
            
            self.department = department
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    l1 = try container.decode(Int.self, forKey: .l1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2 = try container.decode(Int.self, forKey: .l2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(Int.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(Int.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(l1, forKey: .l1)
            
            
            
            
            try? container.encodeIfPresent(l2, forKey: .l2)
            
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MultiCategoriesSchema
        Used By: Catalog
    */

    class MultiCategoriesSchema: Codable {
        
        
        public var l1: Int?
        
        public var l2: Int?
        
        public var l3: Int?
        
        public var isActive: Bool?
        
        public var department: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case l1 = "l1"
            
            case l2 = "l2"
            
            case l3 = "l3"
            
            case isActive = "is_active"
            
            case department = "department"
            
        }

        public init(department: Int? = nil, isActive: Bool? = nil, l1: Int? = nil, l2: Int? = nil, l3: Int? = nil) {
            
            self.l1 = l1
            
            self.l2 = l2
            
            self.l3 = l3
            
            self.isActive = isActive
            
            self.department = department
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    l1 = try container.decode(Int.self, forKey: .l1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2 = try container.decode(Int.self, forKey: .l2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3 = try container.decode(Int.self, forKey: .l3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(Int.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(l1, forKey: .l1)
            
            
            
            
            try? container.encodeIfPresent(l2, forKey: .l2)
            
            
            
            
            try? container.encodeIfPresent(l3, forKey: .l3)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
        }
        
    }
}


