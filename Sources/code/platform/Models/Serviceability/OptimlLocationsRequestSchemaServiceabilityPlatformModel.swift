

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OptimlLocationsRequestSchema
        Used By: Serviceability
    */

    class OptimlLocationsRequestSchema: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        
        public var channelIdentifier: String?
        
        public var toServiceability: LocationDetailsServiceability
        
        public var articles: [OptimalLocationsArticles]
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
            case channelIdentifier = "channel_identifier"
            
            case toServiceability = "to_serviceability"
            
            case articles = "articles"
            
        }

        public init(articles: [OptimalLocationsArticles], channelId: String, channelIdentifier: String? = nil, channelType: String, toServiceability: LocationDetailsServiceability) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
            self.channelIdentifier = channelIdentifier
            
            self.toServiceability = toServiceability
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                do {
                    channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                toServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .toServiceability)
                
            
            
            
                articles = try container.decode([OptimalLocationsArticles].self, forKey: .articles)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OptimlLocationsRequestSchema
        Used By: Serviceability
    */

    class OptimlLocationsRequestSchema: Codable {
        
        
        public var channelId: String
        
        public var channelType: String
        
        public var channelIdentifier: String?
        
        public var toServiceability: LocationDetailsServiceability
        
        public var articles: [OptimalLocationsArticles]
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case channelType = "channel_type"
            
            case channelIdentifier = "channel_identifier"
            
            case toServiceability = "to_serviceability"
            
            case articles = "articles"
            
        }

        public init(articles: [OptimalLocationsArticles], channelId: String, channelIdentifier: String? = nil, channelType: String, toServiceability: LocationDetailsServiceability) {
            
            self.channelId = channelId
            
            self.channelType = channelType
            
            self.channelIdentifier = channelIdentifier
            
            self.toServiceability = toServiceability
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                do {
                    channelIdentifier = try container.decode(String.self, forKey: .channelIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                toServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .toServiceability)
                
            
            
            
                articles = try container.decode([OptimalLocationsArticles].self, forKey: .articles)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelIdentifier, forKey: .channelIdentifier)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}


