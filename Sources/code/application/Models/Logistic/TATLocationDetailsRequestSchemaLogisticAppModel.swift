

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATLocationDetailsRequestSchema
        Used By: Logistic
    */
    class TATLocationDetailsRequestSchema: Codable {
        
        public var fulfillmentId: Int?
        
        public var fromPincode: String?
        
        public var articles: [TATArticlesRequestSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentId = "fulfillment_id"
            
            case fromPincode = "from_pincode"
            
            case articles = "articles"
            
        }

        public init(articles: [TATArticlesRequestSchema]? = nil, fromPincode: String? = nil, fulfillmentId: Int? = nil) {
            
            self.fulfillmentId = fulfillmentId
            
            self.fromPincode = fromPincode
            
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
                fromPincode = try container.decode(String.self, forKey: .fromPincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articles = try container.decode([TATArticlesRequestSchema].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
        }
        
    }
}
