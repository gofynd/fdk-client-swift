

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductActionPage
        Used By: Cart
    */
    class ProductActionPage: Codable {
        
        public var type: String?
        
        public var params: ProductActionParams?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case params = "params"
            
        }

        public init(params: ProductActionParams? = nil, type: String? = nil) {
            
            self.type = type
            
            self.params = params
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                params = try container.decode(ProductActionParams.self, forKey: .params)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
        }
        
    }
}
