

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderSchema
        Used By: Order
    */
    class OrderSchema: Codable {
        
        public var totalShipmentsInOrder: Int?
        
        public var customCartMeta: [String: Any]?
        
        public var gstinCode: String?
        
        public var userInfo: UserInfo?
        
        public var breakupValues: [BreakupValues]?
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var orderId: String?
        
        public var shipments: [Shipments]?
        
        public var bagsForReorder: [BagsForReorder]?
        
        public var customMeta: [[String: Any]]?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var isValidated: Bool?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var meta: [String: Any]?
        
        public var externalOrderId: String?
        
        public var paymentInfo: [PaymentInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case customCartMeta = "custom_cart_meta"
            
            case gstinCode = "gstin_code"
            
            case userInfo = "user_info"
            
            case breakupValues = "breakup_values"
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case orderId = "order_id"
            
            case shipments = "shipments"
            
            case bagsForReorder = "bags_for_reorder"
            
            case customMeta = "custom_meta"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case isValidated = "is_validated"
            
            case charges = "charges"
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
            case paymentInfo = "payment_info"
            
        }

        public init(bagsForReorder: [BagsForReorder]? = nil, breakupValues: [BreakupValues]? = nil, charges: [PriceAdjustmentCharge]? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, customCartMeta: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, externalOrderId: String? = nil, gstinCode: String? = nil, isValidated: Bool? = nil, meta: [String: Any]? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderId: String? = nil, paymentInfo: [PaymentInfo]? = nil, shipments: [Shipments]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: UserInfo? = nil) {
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.customCartMeta = customCartMeta
            
            self.gstinCode = gstinCode
            
            self.userInfo = userInfo
            
            self.breakupValues = breakupValues
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.orderId = orderId
            
            self.shipments = shipments
            
            self.bagsForReorder = bagsForReorder
            
            self.customMeta = customMeta
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.isValidated = isValidated
            
            self.charges = charges
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
            self.paymentInfo = paymentInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customCartMeta = try container.decode([String: Any].self, forKey: .customCartMeta)
            
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
                userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
            
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
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipments = try container.decode([Shipments].self, forKey: .shipments)
            
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
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(Currency.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isValidated = try container.decode(Bool.self, forKey: .isValidated)
            
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
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentInfo = try container.decode([PaymentInfo].self, forKey: .paymentInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            try? container.encodeIfPresent(customCartMeta, forKey: .customCartMeta)
            
            
            
            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            try? container.encodeIfPresent(isValidated, forKey: .isValidated)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
        }
        
    }
}
