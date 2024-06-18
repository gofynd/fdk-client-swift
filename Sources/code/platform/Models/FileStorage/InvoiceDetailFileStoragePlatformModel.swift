

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: InvoiceDetail
        Used By: FileStorage
    */

    class InvoiceDetail: Codable {
        
        
        public var invoiceId: String?
        
        public var invoiceDate: String?
        
        public var irn: String?
        
        public var externalOrderId: String?
        
        public var shipmentId: String?
        
        public var signedQrcode: String?
        
        public var upiQrcode: String?
        
        public var deviceId: String?
        
        public var marketplaceInvoiceId: String?
        
        public var marketplaceShipmentId: String?
        
        public var channelOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
            case invoiceDate = "invoice_date"
            
            case irn = "irn"
            
            case externalOrderId = "external_order_id"
            
            case shipmentId = "shipment_id"
            
            case signedQrcode = "signed_qrcode"
            
            case upiQrcode = "upi_qrcode"
            
            case deviceId = "device_id"
            
            case marketplaceInvoiceId = "marketplace_invoice_id"
            
            case marketplaceShipmentId = "marketplace_shipment_id"
            
            case channelOrderId = "channel_order_id"
            
        }

        public init(channelOrderId: String? = nil, deviceId: String? = nil, externalOrderId: String? = nil, invoiceDate: String? = nil, invoiceId: String? = nil, irn: String? = nil, marketplaceInvoiceId: String? = nil, marketplaceShipmentId: String? = nil, shipmentId: String? = nil, signedQrcode: String? = nil, upiQrcode: String? = nil) {
            
            self.invoiceId = invoiceId
            
            self.invoiceDate = invoiceDate
            
            self.irn = irn
            
            self.externalOrderId = externalOrderId
            
            self.shipmentId = shipmentId
            
            self.signedQrcode = signedQrcode
            
            self.upiQrcode = upiQrcode
            
            self.deviceId = deviceId
            
            self.marketplaceInvoiceId = marketplaceInvoiceId
            
            self.marketplaceShipmentId = marketplaceShipmentId
            
            self.channelOrderId = channelOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDate = try container.decode(String.self, forKey: .invoiceDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcode = try container.decode(String.self, forKey: .upiQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
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
                    marketplaceShipmentId = try container.decode(String.self, forKey: .marketplaceShipmentId)
                
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
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceShipmentId, forKey: .marketplaceShipmentId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: InvoiceDetail
        Used By: FileStorage
    */

    class InvoiceDetail: Codable {
        
        
        public var invoiceId: String?
        
        public var invoiceDate: String?
        
        public var irn: String?
        
        public var externalOrderId: String?
        
        public var shipmentId: String?
        
        public var signedQrcode: String?
        
        public var upiQrcode: String?
        
        public var deviceId: String?
        
        public var marketplaceInvoiceId: String?
        
        public var marketplaceShipmentId: String?
        
        public var channelOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
            case invoiceDate = "invoice_date"
            
            case irn = "irn"
            
            case externalOrderId = "external_order_id"
            
            case shipmentId = "shipment_id"
            
            case signedQrcode = "signed_qrcode"
            
            case upiQrcode = "upi_qrcode"
            
            case deviceId = "device_id"
            
            case marketplaceInvoiceId = "marketplace_invoice_id"
            
            case marketplaceShipmentId = "marketplace_shipment_id"
            
            case channelOrderId = "channel_order_id"
            
        }

        public init(channelOrderId: String? = nil, deviceId: String? = nil, externalOrderId: String? = nil, invoiceDate: String? = nil, invoiceId: String? = nil, irn: String? = nil, marketplaceInvoiceId: String? = nil, marketplaceShipmentId: String? = nil, shipmentId: String? = nil, signedQrcode: String? = nil, upiQrcode: String? = nil) {
            
            self.invoiceId = invoiceId
            
            self.invoiceDate = invoiceDate
            
            self.irn = irn
            
            self.externalOrderId = externalOrderId
            
            self.shipmentId = shipmentId
            
            self.signedQrcode = signedQrcode
            
            self.upiQrcode = upiQrcode
            
            self.deviceId = deviceId
            
            self.marketplaceInvoiceId = marketplaceInvoiceId
            
            self.marketplaceShipmentId = marketplaceShipmentId
            
            self.channelOrderId = channelOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDate = try container.decode(String.self, forKey: .invoiceDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcode = try container.decode(String.self, forKey: .upiQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
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
                    marketplaceShipmentId = try container.decode(String.self, forKey: .marketplaceShipmentId)
                
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
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceShipmentId, forKey: .marketplaceShipmentId)
            
            
            
            
            try? container.encodeIfPresent(channelOrderId, forKey: .channelOrderId)
            
            
        }
        
    }
}


