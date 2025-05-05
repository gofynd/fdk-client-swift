

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ArticleIdentifier
        Used By: Catalog
    */
    class ArticleIdentifier: Codable {
        
        public var ean: String?
        
        public var alu: String?
        
        public var upc: String?
        
        public var skuCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ean = "ean"
            
            case alu = "alu"
            
            case upc = "upc"
            
            case skuCode = "sku_code"
            
        }

        public init(alu: String? = nil, ean: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            
            self.ean = ean
            
            self.alu = alu
            
            self.upc = upc
            
            self.skuCode = skuCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                ean = try container.decode(String.self, forKey: .ean)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                alu = try container.decode(String.self, forKey: .alu)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                upc = try container.decode(String.self, forKey: .upc)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(ean, forKey: .ean)
            
            
            
            try? container.encodeIfPresent(alu, forKey: .alu)
            
            
            
            try? container.encodeIfPresent(upc, forKey: .upc)
            
            
            
            try? container.encodeIfPresent(skuCode, forKey: .skuCode)
            
            
        }
        
    }
}
