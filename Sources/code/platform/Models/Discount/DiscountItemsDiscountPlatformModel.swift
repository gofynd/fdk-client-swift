

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: DiscountItems
        Used By: Discount
    */

    class DiscountItems: Codable {
        
        
        public var itemCode: String?
        
        public var brandName: String?
        
        public var sellerIdentifier: String?
        
        public var discountType: String
        
        public var value: Double
        
        public var discountMeta: DiscountMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemCode = "item_code"
            
            case brandName = "brand_name"
            
            case sellerIdentifier = "seller_identifier"
            
            case discountType = "discount_type"
            
            case value = "value"
            
            case discountMeta = "discount_meta"
            
        }

        public init(brandName: String? = nil, discountMeta: DiscountMeta? = nil, discountType: String, itemCode: String? = nil, sellerIdentifier: String? = nil, value: Double) {
            
            self.itemCode = itemCode
            
            self.brandName = brandName
            
            self.sellerIdentifier = sellerIdentifier
            
            self.discountType = discountType
            
            self.value = value
            
            self.discountMeta = discountMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                do {
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
        }
        
    }
}




