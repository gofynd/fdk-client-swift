

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UpdateCartShipmentItem
        Used By: Cart
    */

    class UpdateCartShipmentItem: Codable {
        
        
        public var quantity: Int?
        
        public var shipmentType: String
        
        public var articleUid: String
        
        public var itemIndex: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case shipmentType = "shipment_type"
            
            case articleUid = "article_uid"
            
            case itemIndex = "item_index"
            
        }

        public init(articleUid: String, itemIndex: Int? = nil, quantity: Int? = nil, shipmentType: String) {
            
            self.quantity = quantity
            
            self.shipmentType = shipmentType
            
            self.articleUid = articleUid
            
            self.itemIndex = itemIndex
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
            
            
            
                articleUid = try container.decode(String.self, forKey: .articleUid)
                
            
            
            
                do {
                    itemIndex = try container.decode(Int.self, forKey: .itemIndex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            
            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
            
            
            
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
            
        }
        
    }
}


