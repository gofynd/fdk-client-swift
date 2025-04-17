

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OptimalLocationAssignedStoresResult
        Used By: Serviceability
    */

    class OptimalLocationAssignedStoresResult: Codable {
        
        
        public var storeId: Int
        
        public var articles: [OptimalLocationArticlesResult]
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case articles = "articles"
            
        }

        public init(articles: [OptimalLocationArticlesResult], storeId: Int) {
            
            self.storeId = storeId
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                articles = try container.decode([OptimalLocationArticlesResult].self, forKey: .articles)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OptimalLocationAssignedStoresResult
        Used By: Serviceability
    */

    class OptimalLocationAssignedStoresResult: Codable {
        
        
        public var storeId: Int
        
        public var articles: [OptimalLocationArticlesResult]
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case articles = "articles"
            
        }

        public init(articles: [OptimalLocationArticlesResult], storeId: Int) {
            
            self.storeId = storeId
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                articles = try container.decode([OptimalLocationArticlesResult].self, forKey: .articles)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}


