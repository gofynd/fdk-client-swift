

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderInfo
        Used By: Order
    */
    class OrderInfo: Codable {
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var totalShipmentsInOrder: Int?
        
        public var orderId: String?
        
        public var breakupValues: [BreakupValues]?
        
        public var shipments: [ShipmentInfo]?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var bagsForReorder: [BagsForReorder]?
        
        public var gstinCode: String?
        
        public var userInfo: UserDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case orderId = "order_id"
            
            case breakupValues = "breakup_values"
            
            case shipments = "shipments"
            
            case charges = "charges"
            
            case bagsForReorder = "bags_for_reorder"
            
            case gstinCode = "gstin_code"
            
            case userInfo = "user_info"
            
        }

        public init(bagsForReorder: [BagsForReorder]? = nil, breakupValues: [BreakupValues]? = nil, charges: [PriceAdjustmentCharge]? = nil, gstinCode: String? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderId: String? = nil, shipments: [ShipmentInfo]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: UserDetails? = nil) {
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.orderId = orderId
            
            self.breakupValues = breakupValues
            
            self.shipments = shipments
            
            self.charges = charges
            
            self.bagsForReorder = bagsForReorder
            
            self.gstinCode = gstinCode
            
            self.userInfo = userInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipments = try container.decode([ShipmentInfo].self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bagsForReorder = try container.decode([BagsForReorder].self, forKey: .bagsForReorder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userInfo = try container.decode(UserDetails.self, forKey: .userInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)
            
            
            
            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
        }
        
    }
}
