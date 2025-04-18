

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceV1Request
        Used By: Catalog
    */
    class ProductSizePriceV1Request: Codable {
        
        public var sellerId: Int?
        
        public var storeId: Int?
        
        public var moq: Int?
        
        public var pincode: String?
        
        public var items: [ProductSizePriceV1RequestBody]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case storeId = "store_id"
            
            case moq = "moq"
            
            case pincode = "pincode"
            
            case items = "items"
            
        }

        public init(items: [ProductSizePriceV1RequestBody]? = nil, moq: Int? = nil, pincode: String? = nil, sellerId: Int? = nil, storeId: Int? = nil) {
            
            self.sellerId = sellerId
            
            self.storeId = storeId
            
            self.moq = moq
            
            self.pincode = pincode
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeId = try container.decode(Int.self, forKey: .storeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                moq = try container.decode(Int.self, forKey: .moq)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pincode = try container.decode(String.self, forKey: .pincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([ProductSizePriceV1RequestBody].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
