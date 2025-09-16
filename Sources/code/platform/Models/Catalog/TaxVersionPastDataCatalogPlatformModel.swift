

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxVersionPastData
        Used By: Catalog
    */

    class TaxVersionPastData: Codable {
        
        
        public var data: [TaxVersion]?
        
        public var pagination: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case pagination = "pagination"
            
        }

        public init(data: [TaxVersion]? = nil, pagination: Page? = nil) {
            
            self.data = data
            
            self.pagination = pagination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([TaxVersion].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pagination = try container.decode(Page.self, forKey: .pagination)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(pagination, forKey: .pagination)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxVersionPastData
        Used By: Catalog
    */

    class TaxVersionPastData: Codable {
        
        
        public var data: [TaxVersion]?
        
        public var pagination: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case pagination = "pagination"
            
        }

        public init(data: [TaxVersion]? = nil, pagination: Page? = nil) {
            
            self.data = data
            
            self.pagination = pagination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([TaxVersion].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pagination = try container.decode(Page.self, forKey: .pagination)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(pagination, forKey: .pagination)
            
            
        }
        
    }
}


