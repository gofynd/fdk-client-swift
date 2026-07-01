

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceTranslationBulkUpsert
        Used By: Content
    */

    class ResourceTranslationBulkUpsert: Codable {
        
        
        public var metrics: Metrics?
        
        public var failedItems: [ResourceTranslationUpsertItem]?
        
        public var updatedItems: [ResourceTranslationUpsertItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case metrics = "metrics"
            
            case failedItems = "failed_items"
            
            case updatedItems = "updated_items"
            
        }

        public init(failedItems: [ResourceTranslationUpsertItem]? = nil, metrics: Metrics? = nil, updatedItems: [ResourceTranslationUpsertItem]? = nil) {
            
            self.metrics = metrics
            
            self.failedItems = failedItems
            
            self.updatedItems = updatedItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    metrics = try container.decode(Metrics.self, forKey: .metrics)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedItems = try container.decode([ResourceTranslationUpsertItem].self, forKey: .failedItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedItems = try container.decode([ResourceTranslationUpsertItem].self, forKey: .updatedItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(metrics, forKey: .metrics)
            
            
            
            
            try? container.encodeIfPresent(failedItems, forKey: .failedItems)
            
            
            
            
            try? container.encodeIfPresent(updatedItems, forKey: .updatedItems)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceTranslationBulkUpsert
        Used By: Content
    */

    class ResourceTranslationBulkUpsert: Codable {
        
        
        public var metrics: Metrics?
        
        public var failedItems: [ResourceTranslationUpsertItem]?
        
        public var updatedItems: [ResourceTranslationUpsertItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case metrics = "metrics"
            
            case failedItems = "failed_items"
            
            case updatedItems = "updated_items"
            
        }

        public init(failedItems: [ResourceTranslationUpsertItem]? = nil, metrics: Metrics? = nil, updatedItems: [ResourceTranslationUpsertItem]? = nil) {
            
            self.metrics = metrics
            
            self.failedItems = failedItems
            
            self.updatedItems = updatedItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    metrics = try container.decode(Metrics.self, forKey: .metrics)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedItems = try container.decode([ResourceTranslationUpsertItem].self, forKey: .failedItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedItems = try container.decode([ResourceTranslationUpsertItem].self, forKey: .updatedItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(metrics, forKey: .metrics)
            
            
            
            
            try? container.encodeIfPresent(failedItems, forKey: .failedItems)
            
            
            
            
            try? container.encodeIfPresent(updatedItems, forKey: .updatedItems)
            
            
        }
        
    }
}


