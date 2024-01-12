

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: Ownership
        Used By: Cart
    */
    class Ownership: Codable {
        
        public var payableCategory: String?
        
        public var payableBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
            case payableBy = "payable_by"
            
        }

        public init(payableBy: String? = nil, payableCategory: String? = nil) {
            
            self.payableCategory = payableCategory
            
            self.payableBy = payableBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                payableBy = try container.decode(String.self, forKey: .payableBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
}
