

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformLocationArticles
        Used By: Serviceability
    */

    class PlatformLocationArticles: Codable {
        
        
        public var articles: [PlatformLocationArticle]
        
        public var fulfillmentLocationId: Int
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
            case fulfillmentLocationId = "fulfillment_location_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
        }

        public init(articles: [PlatformLocationArticle], fulfillmentLocationId: Int, fulfillmentTags: [String]? = nil, fulfillmentType: String) {
            
            self.articles = articles
            
            self.fulfillmentLocationId = fulfillmentLocationId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                articles = try container.decode([PlatformLocationArticle].self, forKey: .articles)
                
            
            
            
                fulfillmentLocationId = try container.decode(Int.self, forKey: .fulfillmentLocationId)
                
            
            
            
                do {
                    fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentLocationId, forKey: .fulfillmentLocationId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformLocationArticles
        Used By: Serviceability
    */

    class PlatformLocationArticles: Codable {
        
        
        public var articles: [PlatformLocationArticle]
        
        public var fulfillmentLocationId: Int
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
            case fulfillmentLocationId = "fulfillment_location_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
        }

        public init(articles: [PlatformLocationArticle], fulfillmentLocationId: Int, fulfillmentTags: [String]? = nil, fulfillmentType: String) {
            
            self.articles = articles
            
            self.fulfillmentLocationId = fulfillmentLocationId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                articles = try container.decode([PlatformLocationArticle].self, forKey: .articles)
                
            
            
            
                fulfillmentLocationId = try container.decode(Int.self, forKey: .fulfillmentLocationId)
                
            
            
            
                do {
                    fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentLocationId, forKey: .fulfillmentLocationId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
        }
        
    }
}


