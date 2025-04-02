

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetConfigMetadataResponse
        Used By: Catalog
    */

    class GetConfigMetadataResponse: Codable {
        
        
        public var page: Page?
        
        public var condition: [ConditionItem]?
        
        public var data: [DataItem]
        
        public var values: GetConfigMetadataValues?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case condition = "condition"
            
            case data = "data"
            
            case values = "values"
            
        }

        public init(condition: [ConditionItem]? = nil, data: [DataItem], page: Page? = nil, values: GetConfigMetadataValues? = nil) {
            
            self.page = page
            
            self.condition = condition
            
            self.data = data
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    condition = try container.decode([ConditionItem].self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                data = try container.decode([DataItem].self, forKey: .data)
                
            
            
            
                do {
                    values = try container.decode(GetConfigMetadataValues.self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetConfigMetadataResponse
        Used By: Catalog
    */

    class GetConfigMetadataResponse: Codable {
        
        
        public var page: Page?
        
        public var condition: [ConditionItem]?
        
        public var data: [DataItem]
        
        public var values: GetConfigMetadataValues?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case condition = "condition"
            
            case data = "data"
            
            case values = "values"
            
        }

        public init(condition: [ConditionItem]? = nil, data: [DataItem], page: Page? = nil, values: GetConfigMetadataValues? = nil) {
            
            self.page = page
            
            self.condition = condition
            
            self.data = data
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    condition = try container.decode([ConditionItem].self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                data = try container.decode([DataItem].self, forKey: .data)
                
            
            
            
                do {
                    values = try container.decode(GetConfigMetadataValues.self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


