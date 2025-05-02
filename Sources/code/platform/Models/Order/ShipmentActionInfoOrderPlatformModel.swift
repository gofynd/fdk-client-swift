

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentActionInfo
        Used By: Order
    */

    class ShipmentActionInfo: Codable {
        
        
        public var label: [String]?
        
        public var invoice: [String]?
        
        public var failedShipments: [[String: String]]?
        
        public var processingShipments: [String]?
        
        public var successfulShipments: [String]?
        
        public var invoiceableShipments: [String]?
        
        public var failedInvoicedShipments: [String: String]?
        
        public var processingInvoiceShipments: [String]?
        
        public var successfulInvoicedShipments: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case invoice = "invoice"
            
            case failedShipments = "failed_shipments"
            
            case processingShipments = "processing_shipments"
            
            case successfulShipments = "successful_shipments"
            
            case invoiceableShipments = "invoiceable_shipments"
            
            case failedInvoicedShipments = "failed_invoiced_shipments"
            
            case processingInvoiceShipments = "processing_invoice_shipments"
            
            case successfulInvoicedShipments = "successful_invoiced_shipments"
            
        }

        public init(failedInvoicedShipments: [String: String]? = nil, failedShipments: [[String: String]]? = nil, invoice: [String]? = nil, invoiceableShipments: [String]? = nil, label: [String]? = nil, processingInvoiceShipments: [String]? = nil, processingShipments: [String]? = nil, successfulInvoicedShipments: [String]? = nil, successfulShipments: [String]? = nil) {
            
            self.label = label
            
            self.invoice = invoice
            
            self.failedShipments = failedShipments
            
            self.processingShipments = processingShipments
            
            self.successfulShipments = successfulShipments
            
            self.invoiceableShipments = invoiceableShipments
            
            self.failedInvoicedShipments = failedInvoicedShipments
            
            self.processingInvoiceShipments = processingInvoiceShipments
            
            self.successfulInvoicedShipments = successfulInvoicedShipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    label = try container.decode([String].self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode([String].self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShipments = try container.decode([[String: String]].self, forKey: .failedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingShipments = try container.decode([String].self, forKey: .processingShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulShipments = try container.decode([String].self, forKey: .successfulShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceableShipments = try container.decode([String].self, forKey: .invoiceableShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedInvoicedShipments = try container.decode([String: String].self, forKey: .failedInvoicedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingInvoiceShipments = try container.decode([String].self, forKey: .processingInvoiceShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulInvoicedShipments = try container.decode([String].self, forKey: .successfulInvoicedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)
            
            
            
            
            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)
            
            
            
            
            try? container.encodeIfPresent(invoiceableShipments, forKey: .invoiceableShipments)
            
            
            
            
            try? container.encodeIfPresent(failedInvoicedShipments, forKey: .failedInvoicedShipments)
            
            
            
            
            try? container.encodeIfPresent(processingInvoiceShipments, forKey: .processingInvoiceShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulInvoicedShipments, forKey: .successfulInvoicedShipments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentActionInfo
        Used By: Order
    */

    class ShipmentActionInfo: Codable {
        
        
        public var label: [String]?
        
        public var invoice: [String]?
        
        public var failedShipments: [[String: String]]?
        
        public var processingShipments: [String]?
        
        public var successfulShipments: [String]?
        
        public var invoiceableShipments: [String]?
        
        public var failedInvoicedShipments: [String: String]?
        
        public var processingInvoiceShipments: [String]?
        
        public var successfulInvoicedShipments: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case invoice = "invoice"
            
            case failedShipments = "failed_shipments"
            
            case processingShipments = "processing_shipments"
            
            case successfulShipments = "successful_shipments"
            
            case invoiceableShipments = "invoiceable_shipments"
            
            case failedInvoicedShipments = "failed_invoiced_shipments"
            
            case processingInvoiceShipments = "processing_invoice_shipments"
            
            case successfulInvoicedShipments = "successful_invoiced_shipments"
            
        }

        public init(failedInvoicedShipments: [String: String]? = nil, failedShipments: [[String: String]]? = nil, invoice: [String]? = nil, invoiceableShipments: [String]? = nil, label: [String]? = nil, processingInvoiceShipments: [String]? = nil, processingShipments: [String]? = nil, successfulInvoicedShipments: [String]? = nil, successfulShipments: [String]? = nil) {
            
            self.label = label
            
            self.invoice = invoice
            
            self.failedShipments = failedShipments
            
            self.processingShipments = processingShipments
            
            self.successfulShipments = successfulShipments
            
            self.invoiceableShipments = invoiceableShipments
            
            self.failedInvoicedShipments = failedInvoicedShipments
            
            self.processingInvoiceShipments = processingInvoiceShipments
            
            self.successfulInvoicedShipments = successfulInvoicedShipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    label = try container.decode([String].self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode([String].self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedShipments = try container.decode([[String: String]].self, forKey: .failedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingShipments = try container.decode([String].self, forKey: .processingShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulShipments = try container.decode([String].self, forKey: .successfulShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceableShipments = try container.decode([String].self, forKey: .invoiceableShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedInvoicedShipments = try container.decode([String: String].self, forKey: .failedInvoicedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingInvoiceShipments = try container.decode([String].self, forKey: .processingInvoiceShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successfulInvoicedShipments = try container.decode([String].self, forKey: .successfulInvoicedShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(failedShipments, forKey: .failedShipments)
            
            
            
            
            try? container.encodeIfPresent(processingShipments, forKey: .processingShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulShipments, forKey: .successfulShipments)
            
            
            
            
            try? container.encodeIfPresent(invoiceableShipments, forKey: .invoiceableShipments)
            
            
            
            
            try? container.encodeIfPresent(failedInvoicedShipments, forKey: .failedInvoicedShipments)
            
            
            
            
            try? container.encodeIfPresent(processingInvoiceShipments, forKey: .processingInvoiceShipments)
            
            
            
            
            try? container.encodeIfPresent(successfulInvoicedShipments, forKey: .successfulInvoicedShipments)
            
            
        }
        
    }
}


