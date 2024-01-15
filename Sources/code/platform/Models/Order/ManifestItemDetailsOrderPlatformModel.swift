

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestItemDetails
        Used By: Order
    */

    class ManifestItemDetails: Codable {
        
        
        public var quantity: Int?
        
        public var shipmentId: String
        
        public var orderId: String
        
        public var awbNumber: String?
        
        public var invoiceId: String?
        
        public var shipmentCreatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case awbNumber = "awb_number"
            
            case invoiceId = "invoice_id"
            
            case shipmentCreatedAt = "shipment_created_at"
            
        }

        public init(awbNumber: String? = nil, invoiceId: String? = nil, orderId: String, quantity: Int? = nil, shipmentCreatedAt: String? = nil, shipmentId: String) {
            
            self.quantity = quantity
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.awbNumber = awbNumber
            
            self.invoiceId = invoiceId
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
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
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestItemDetails
        Used By: Order
    */

    class ManifestItemDetails: Codable {
        
        
        public var quantity: Int?
        
        public var shipmentId: String
        
        public var orderId: String
        
        public var awbNumber: String?
        
        public var invoiceId: String?
        
        public var shipmentCreatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case awbNumber = "awb_number"
            
            case invoiceId = "invoice_id"
            
            case shipmentCreatedAt = "shipment_created_at"
            
        }

        public init(awbNumber: String? = nil, invoiceId: String? = nil, orderId: String, quantity: Int? = nil, shipmentCreatedAt: String? = nil, shipmentId: String) {
            
            self.quantity = quantity
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.awbNumber = awbNumber
            
            self.invoiceId = invoiceId
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
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
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
        }
        
    }
}


