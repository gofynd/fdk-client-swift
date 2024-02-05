

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SearchRequest
        Used By: Catalog
    */

    class SearchRequest: Codable {
        
        
        public var isActive: Bool?
        
        public var q: String?
        
        public var pageNo: Int?
        
        public var pageSize: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case q = "q"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
        }

        public init(isActive: Bool? = nil, pageNo: Int? = nil, pageSize: Int? = nil, q: String? = nil) {
            
            self.isActive = isActive
            
            self.q = q
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(q, forKey: .q)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SearchRequest
        Used By: Catalog
    */

    class SearchRequest: Codable {
        
        
        public var isActive: Bool?
        
        public var q: String?
        
        public var pageNo: Int?
        
        public var pageSize: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case q = "q"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
        }

        public init(isActive: Bool? = nil, pageNo: Int? = nil, pageSize: Int? = nil, q: String? = nil) {
            
            self.isActive = isActive
            
            self.q = q
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(q, forKey: .q)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
        }
        
    }
}


