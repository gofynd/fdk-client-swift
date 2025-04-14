

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductFrequentlyComparedSimilarResponseSchema
        Used By: Catalog
    */
    class ProductFrequentlyComparedSimilarResponseSchema: Codable {
        
        public var similars: ProductCompareResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case similars = "similars"
            
        }

        public init(similars: ProductCompareResponseSchema? = nil) {
            
            self.similars = similars
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                similars = try container.decode(ProductCompareResponseSchema.self, forKey: .similars)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(similars, forKey: .similars)
            
            
        }
        
    }
}
