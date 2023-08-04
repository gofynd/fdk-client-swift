

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: invoiceDetail
        Used By: FileStorage
    */

    class invoiceDetail: Codable {
        
        
        public var invoiceId: String
        
        public var invoiceDate: String
        
        public var irn: String?
        
        public var externalOrderId: String?
        
        public var shipmentId: String
        
        public var orderId: String?
        
        public var channelOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
            case invoiceDate = "invoice_date"
            
            case irn = "irn"
            
            case externalOrderId = "external_order_id"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case channelOrderId = "channel_order_id"
            
        }

        public init(channelOrderId: String? = nil, externalOrderId: String? = nil, invoiceDate: String, invoiceId: String, irn: String? = nil, orderId: String? = nil, shipmentId: String) {
            
            self.invoiceId = invoiceId
            
            self.invoiceDate = invoiceDate
            
            self.irn = irn
            
            self.externalOrderId = externalOrderId
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.channelOrderId = channelOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
            
            
            
                invoiceDate = try container.decode(String.self, forKey: .invoiceDate)
                
            
            
            
                do {
                    irn = try container.decode(String.self, forKey: .irn)
                
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
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(invoiceDate, forKey: .invoiceDate)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: invoiceDetail
        Used By: FileStorage
    */

    class invoiceDetail: Codable {
        
        
        public var invoiceId: String
        
        public var invoiceDate: String
        
        public var irn: String?
        
        public var externalOrderId: String?
        
        public var shipmentId: String
        
        public var orderId: String?
        
        public var channelOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
            case invoiceDate = "invoice_date"
            
            case irn = "irn"
            
            case externalOrderId = "external_order_id"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case channelOrderId = "channel_order_id"
            
        }

        public init(channelOrderId: String? = nil, externalOrderId: String? = nil, invoiceDate: String, invoiceId: String, irn: String? = nil, orderId: String? = nil, shipmentId: String) {
            
            self.invoiceId = invoiceId
            
            self.invoiceDate = invoiceDate
            
            self.irn = irn
            
            self.externalOrderId = externalOrderId
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.channelOrderId = channelOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
            
            
            
                invoiceDate = try container.decode(String.self, forKey: .invoiceDate)
                
            
            
            
                do {
                    irn = try container.decode(String.self, forKey: .irn)
                
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
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(invoiceDate, forKey: .invoiceDate)
            
            
            
            
            try? container.encodeIfPresent(irn, forKey: .irn)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
        }
        
    }
}


