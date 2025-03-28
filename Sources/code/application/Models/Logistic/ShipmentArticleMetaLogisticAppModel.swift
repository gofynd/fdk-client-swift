

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentArticleMeta
        Used By: Logistic
    */
    class ShipmentArticleMeta: Codable {
        
        public var isSet: Bool?
        
        public var set: [String: Any]?
        
        public var isSetArticle: Bool?
        
        public var setQuantity: Int?
        
        public var splitArticleId: String?
        
        public var promoIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSet = "is_set"
            
            case set = "set"
            
            case isSetArticle = "is_set_article"
            
            case setQuantity = "set_quantity"
            
            case splitArticleId = "split_article_id"
            
            case promoIds = "promo_ids"
            
        }

        public init(isSet: Bool? = nil, isSetArticle: Bool? = nil, promoIds: [String]? = nil, set: [String: Any]? = nil, setQuantity: Int? = nil, splitArticleId: String? = nil) {
            
            self.isSet = isSet
            
            self.set = set
            
            self.isSetArticle = isSetArticle
            
            self.setQuantity = setQuantity
            
            self.splitArticleId = splitArticleId
            
            self.promoIds = promoIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                set = try container.decode([String: Any].self, forKey: .set)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSetArticle = try container.decode(Bool.self, forKey: .isSetArticle)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                setQuantity = try container.decode(Int.self, forKey: .setQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                splitArticleId = try container.decode(String.self, forKey: .splitArticleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promoIds = try container.decode([String].self, forKey: .promoIds)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(isSetArticle, forKey: .isSetArticle)
            
            
            
            try? container.encodeIfPresent(setQuantity, forKey: .setQuantity)
            
            
            
            try? container.encodeIfPresent(splitArticleId, forKey: .splitArticleId)
            
            
            
            try? container.encodeIfPresent(promoIds, forKey: .promoIds)
            
            
        }
        
    }
}
