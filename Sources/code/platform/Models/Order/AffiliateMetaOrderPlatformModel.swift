

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateMeta
        Used By: Order
    */

    class AffiliateMeta: Codable {
        
        
        public var orderItemId: String?
        
        public var channelOrderId: String?
        
        public var employeeDiscount: Double?
        
        public var boxType: String?
        
        public var quantity: Int?
        
        public var sizeLevelTotalQty: Int?
        
        public var loyaltyDiscount: Double?
        
        public var replacementDetails: ReplacementDetails?
        
        public var channelShipmentId: String?
        
        public var marketplaceInvoiceId: String?
        
        public var dueDate: String?
        
        public var couponCode: String?
        
        public var isPriority: Bool?
        
        public var isSerialNumberRequired: Bool?
        
        public var fulfilmentPriority: Int?
        
        public var customerSellingPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderItemId = "order_item_id"
            
            case channelOrderId = "channel_order_id"
            
            case employeeDiscount = "employee_discount"
            
            case boxType = "box_type"
            
            case quantity = "quantity"
            
            case sizeLevelTotalQty = "size_level_total_qty"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case replacementDetails = "replacement_details"
            
            case channelShipmentId = "channel_shipment_id"
            
            case marketplaceInvoiceId = "marketplace_invoice_id"
            
            case dueDate = "due_date"
            
            case couponCode = "coupon_code"
            
            case isPriority = "is_priority"
            
            case isSerialNumberRequired = "is_serial_number_required"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case customerSellingPrice = "customer_selling_price"
            
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, customerSellingPrice: Double? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, fulfilmentPriority: Int? = nil, isPriority: Bool? = nil, isSerialNumberRequired: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails? = nil, sizeLevelTotalQty: Int? = nil) {
            
            self.orderItemId = orderItemId
            
            self.channelOrderId = channelOrderId
            
            self.employeeDiscount = employeeDiscount
            
            self.boxType = boxType
            
            self.quantity = quantity
            
            self.sizeLevelTotalQty = sizeLevelTotalQty
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.replacementDetails = replacementDetails
            
            self.channelShipmentId = channelShipmentId
            
            self.marketplaceInvoiceId = marketplaceInvoiceId
            
            self.dueDate = dueDate
            
            self.couponCode = couponCode
            
            self.isPriority = isPriority
            
            self.isSerialNumberRequired = isSerialNumberRequired
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.customerSellingPrice = customerSellingPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderItemId = try container.decode(String.self, forKey: .orderItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelOrderId = try container.decode(String.self, forKey: .channelOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dueDate = try container.decode(String.self, forKey: .dueDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPriority = try container.decode(Bool.self, forKey: .isPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSerialNumberRequired = try container.decode(Bool.self, forKey: .isSerialNumberRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerSellingPrice = try container.decode(Double.self, forKey: .customerSellingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)
            
            
            
            
            try? container.encodeIfPresent(channelShipmentId, forKey: .channelShipmentId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(isPriority, forKey: .isPriority)
            
            
            
            
            try? container.encodeIfPresent(isSerialNumberRequired, forKey: .isSerialNumberRequired)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(customerSellingPrice, forKey: .customerSellingPrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateMeta
        Used By: Order
    */

    class AffiliateMeta: Codable {
        
        
        public var orderItemId: String?
        
        public var channelOrderId: String?
        
        public var employeeDiscount: Double?
        
        public var boxType: String?
        
        public var quantity: Int?
        
        public var sizeLevelTotalQty: Int?
        
        public var loyaltyDiscount: Double?
        
        public var replacementDetails: ReplacementDetails?
        
        public var channelShipmentId: String?
        
        public var marketplaceInvoiceId: String?
        
        public var dueDate: String?
        
        public var couponCode: String?
        
        public var isPriority: Bool?
        
        public var isSerialNumberRequired: Bool?
        
        public var fulfilmentPriority: Int?
        
        public var customerSellingPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderItemId = "order_item_id"
            
            case channelOrderId = "channel_order_id"
            
            case employeeDiscount = "employee_discount"
            
            case boxType = "box_type"
            
            case quantity = "quantity"
            
            case sizeLevelTotalQty = "size_level_total_qty"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case replacementDetails = "replacement_details"
            
            case channelShipmentId = "channel_shipment_id"
            
            case marketplaceInvoiceId = "marketplace_invoice_id"
            
            case dueDate = "due_date"
            
            case couponCode = "coupon_code"
            
            case isPriority = "is_priority"
            
            case isSerialNumberRequired = "is_serial_number_required"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case customerSellingPrice = "customer_selling_price"
            
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, customerSellingPrice: Double? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, fulfilmentPriority: Int? = nil, isPriority: Bool? = nil, isSerialNumberRequired: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails? = nil, sizeLevelTotalQty: Int? = nil) {
            
            self.orderItemId = orderItemId
            
            self.channelOrderId = channelOrderId
            
            self.employeeDiscount = employeeDiscount
            
            self.boxType = boxType
            
            self.quantity = quantity
            
            self.sizeLevelTotalQty = sizeLevelTotalQty
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.replacementDetails = replacementDetails
            
            self.channelShipmentId = channelShipmentId
            
            self.marketplaceInvoiceId = marketplaceInvoiceId
            
            self.dueDate = dueDate
            
            self.couponCode = couponCode
            
            self.isPriority = isPriority
            
            self.isSerialNumberRequired = isSerialNumberRequired
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.customerSellingPrice = customerSellingPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderItemId = try container.decode(String.self, forKey: .orderItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelOrderId = try container.decode(String.self, forKey: .channelOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dueDate = try container.decode(String.self, forKey: .dueDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPriority = try container.decode(Bool.self, forKey: .isPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSerialNumberRequired = try container.decode(Bool.self, forKey: .isSerialNumberRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerSellingPrice = try container.decode(Double.self, forKey: .customerSellingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)
            
            
            
            
            try? container.encodeIfPresent(channelShipmentId, forKey: .channelShipmentId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(isPriority, forKey: .isPriority)
            
            
            
            
            try? container.encodeIfPresent(isSerialNumberRequired, forKey: .isSerialNumberRequired)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(customerSellingPrice, forKey: .customerSellingPrice)
            
            
        }
        
    }
}


