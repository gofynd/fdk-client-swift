

import Foundation
public extension PlatformClient {
    /*
        Model: BagUnit
        Used By: Order
    */

    class BagUnit: Codable {
        
        
        public var totalShipmentBags: Int
        
        public var shipmentId: String
        
        public var status: [String: Any]
        
        public var gst: GSTDetailsData?
        
        public var orderingChannel: String
        
        public var bagId: Int
        
        public var itemQuantity: Int
        
        public var prices: Prices?
        
        public var item: PlatformItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalShipmentBags = "total_shipment_bags"
            
            case shipmentId = "shipment_id"
            
            case status = "status"
            
            case gst = "gst"
            
            case orderingChannel = "ordering_channel"
            
            case bagId = "bag_id"
            
            case itemQuantity = "item_quantity"
            
            case prices = "prices"
            
            case item = "item"
            
        }

        public init(bagId: Int, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            
            self.totalShipmentBags = totalShipmentBags
            
            self.shipmentId = shipmentId
            
            self.status = status
            
            self.gst = gst
            
            self.orderingChannel = orderingChannel
            
            self.bagId = bagId
            
            self.itemQuantity = itemQuantity
            
            self.prices = prices
            
            self.item = item
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                status = try container.decode([String: Any].self, forKey: .status)
                
            
            
            
                do {
                    gst = try container.decode(GSTDetailsData.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
            
            
            
                bagId = try container.decode(Int.self, forKey: .bagId)
                
            
            
            
                itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)
                
            
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    item = try container.decode(PlatformItem.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
        }
        
    }
}
