

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GenerateShipmentsLocationArticles
        Used By: Logistic
    */
    class GenerateShipmentsLocationArticles: Codable {
        
        public var fulfillmentId: Int
        
        public var fromServiceability: LocationDetailsServiceability
        
        public var fulfillmentType: String
        
        public var fulfillmentTags: [String]
        
        public var articles: [LocationDetailsArticle]
        
        public var ewaybillEnabled: Bool?
        
        public var isHomeDelivery: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentId = "fulfillment_id"
            
            case fromServiceability = "from_serviceability"
            
            case fulfillmentType = "fulfillment_type"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case articles = "articles"
            
            case ewaybillEnabled = "ewaybill_enabled"
            
            case isHomeDelivery = "is_home_delivery"
            
        }

        public init(articles: [LocationDetailsArticle], ewaybillEnabled: Bool? = nil, fromServiceability: LocationDetailsServiceability, fulfillmentId: Int, fulfillmentTags: [String], fulfillmentType: String, isHomeDelivery: Bool? = nil) {
            
            self.fulfillmentId = fulfillmentId
            
            self.fromServiceability = fromServiceability
            
            self.fulfillmentType = fulfillmentType
            
            self.fulfillmentTags = fulfillmentTags
            
            self.articles = articles
            
            self.ewaybillEnabled = ewaybillEnabled
            
            self.isHomeDelivery = isHomeDelivery
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
            
            
            
            
            fromServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .fromServiceability)
            
            
            
            
            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
            
            
            
            
            fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
            
            
            
            
            articles = try container.decode([LocationDetailsArticle].self, forKey: .articles)
            
            
            
            
            do {
                ewaybillEnabled = try container.decode(Bool.self, forKey: .ewaybillEnabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isHomeDelivery = try container.decode(Bool.self, forKey: .isHomeDelivery)
            
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
            
            
            
            try? container.encodeIfPresent(ewaybillEnabled, forKey: .ewaybillEnabled)
            
            
            
            try? container.encodeIfPresent(isHomeDelivery, forKey: .isHomeDelivery)
            
            
        }
        
    }
}
