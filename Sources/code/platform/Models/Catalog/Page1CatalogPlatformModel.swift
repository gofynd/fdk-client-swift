

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Page1
        Used By: Catalog
    */

    class Page1: Codable {
        
        
        public var ca: Bool?
        
        public var department: String?
        
        public var pageNo: Int?
        
        public var pageSize: Int?
        
        public var q: String?
        
        public var sort: String?
        
        public var sortOn: String?
        
        public var type: String?
        
        public var variant: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ca = "ca"
            
            case department = "department"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
            case q = "q"
            
            case sort = "sort"
            
            case sortOn = "sort_on"
            
            case type = "type"
            
            case variant = "variant"
            
        }

        public init(ca: Bool? = nil, department: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, q: String? = nil, sort: String? = nil, sortOn: String? = nil, type: String? = nil, variant: String? = nil) {
            
            self.ca = ca
            
            self.department = department
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
            self.q = q
            
            self.sort = sort
            
            self.sortOn = sortOn
            
            self.type = type
            
            self.variant = variant
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ca = try container.decode(Bool.self, forKey: .ca)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    q = try container.decode(String.self, forKey: .q)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(String.self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode(String.self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(String.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ca, forKey: .ca)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(q, forKey: .q)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Page1
        Used By: Catalog
    */

    class Page1: Codable {
        
        
        public var ca: Bool?
        
        public var department: String?
        
        public var pageNo: Int?
        
        public var pageSize: Int?
        
        public var q: String?
        
        public var sort: String?
        
        public var sortOn: String?
        
        public var type: String?
        
        public var variant: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ca = "ca"
            
            case department = "department"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
            case q = "q"
            
            case sort = "sort"
            
            case sortOn = "sort_on"
            
            case type = "type"
            
            case variant = "variant"
            
        }

        public init(ca: Bool? = nil, department: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, q: String? = nil, sort: String? = nil, sortOn: String? = nil, type: String? = nil, variant: String? = nil) {
            
            self.ca = ca
            
            self.department = department
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
            self.q = q
            
            self.sort = sort
            
            self.sortOn = sortOn
            
            self.type = type
            
            self.variant = variant
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ca = try container.decode(Bool.self, forKey: .ca)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    department = try container.decode(String.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    q = try container.decode(String.self, forKey: .q)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(String.self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode(String.self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variant = try container.decode(String.self, forKey: .variant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ca, forKey: .ca)
            
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(q, forKey: .q)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(variant, forKey: .variant)
            
            
        }
        
    }
}


