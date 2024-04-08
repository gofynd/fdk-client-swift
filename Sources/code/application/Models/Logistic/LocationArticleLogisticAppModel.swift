

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: LocationArticle
        Used By: Logistic
    */
    class LocationArticle: Codable {
        
        public var fulfillmentId: Int?
        
        public var fromServiceability: ServiceabilityNew?
        
        public var fulfillmentType: String?
        
        public var fulfillmentTags: [String]?
        
        public var articles: [Article]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentId = "fulfillment_id"
            
            case fromServiceability = "from_serviceability"
            
            case fulfillmentType = "fulfillment_type"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case articles = "articles"
            
        }

        public init(articles: [Article]? = nil, fromServiceability: ServiceabilityNew? = nil, fulfillmentId: Int? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil) {
            
            self.fulfillmentId = fulfillmentId
            
            self.fromServiceability = fromServiceability
            
            self.fulfillmentType = fulfillmentType
            
            self.fulfillmentTags = fulfillmentTags
            
            self.articles = articles
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fromServiceability = try container.decode(ServiceabilityNew.self, forKey: .fromServiceability)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articles = try container.decode([Article].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            try? container.encodeIfPresent(fromServiceability, forKey: .fromServiceability)
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}
