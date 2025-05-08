

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleListRequestSchema
        Used By: Order
    */

    class RuleListRequestSchema: Codable {
        
        
        public var pageNo: Int?
        
        public var channel: [String]?
        
        public var department: [String]?
        
        public var id: [String]?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageNo = "page_no"
            
            case channel = "channel"
            
            case department = "department"
            
            case id = "id"
            
            case isActive = "is_active"
            
        }

        public init(channel: [String]? = nil, department: [String]? = nil, id: [String]? = nil, isActive: Bool? = nil, pageNo: Int? = nil) {
            
            self.pageNo = pageNo
            
            self.channel = channel
            
            self.department = department
            
            self.id = id
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode([String].self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode([String].self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode([String].self, forKey: .id)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleListRequestSchema
        Used By: Order
    */

    class RuleListRequestSchema: Codable {
        
        
        public var pageNo: Int?
        
        public var channel: [String]?
        
        public var department: [String]?
        
        public var id: [String]?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageNo = "page_no"
            
            case channel = "channel"
            
            case department = "department"
            
            case id = "id"
            
            case isActive = "is_active"
            
        }

        public init(channel: [String]? = nil, department: [String]? = nil, id: [String]? = nil, isActive: Bool? = nil, pageNo: Int? = nil) {
            
            self.pageNo = pageNo
            
            self.channel = channel
            
            self.department = department
            
            self.id = id
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode([String].self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode([String].self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode([String].self, forKey: .id)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


