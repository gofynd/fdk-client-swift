

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PDFLinks
        Used By: Order
    */

    class PDFLinks: Codable {
        
        
        public var invoiceType: String
        
        public var labelA6: String?
        
        public var invoice: String?
        
        public var labelPos: String?
        
        public var invoiceA6: String?
        
        public var b2B: String?
        
        public var label: String?
        
        public var labelA4: String?
        
        public var labelType: String
        
        public var invoiceExport: String?
        
        public var creditNoteUrl: String?
        
        public var deliveryChallanA4: String?
        
        public var labelExport: String?
        
        public var invoiceA4: String?
        
        public var invoicePos: String?
        
        public var poInvoice: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceType = "invoice_type"
            
            case labelA6 = "label_a6"
            
            case invoice = "invoice"
            
            case labelPos = "label_pos"
            
            case invoiceA6 = "invoice_a6"
            
            case b2B = "b2b"
            
            case label = "label"
            
            case labelA4 = "label_a4"
            
            case labelType = "label_type"
            
            case invoiceExport = "invoice_export"
            
            case creditNoteUrl = "credit_note_url"
            
            case deliveryChallanA4 = "delivery_challan_a4"
            
            case labelExport = "label_export"
            
            case invoiceA4 = "invoice_a4"
            
            case invoicePos = "invoice_pos"
            
            case poInvoice = "po_invoice"
            
        }

        public init(b2B: String? = nil, creditNoteUrl: String? = nil, deliveryChallanA4: String? = nil, invoice: String? = nil, invoiceA4: String? = nil, invoiceA6: String? = nil, invoiceExport: String? = nil, invoicePos: String? = nil, invoiceType: String, label: String? = nil, labelA4: String? = nil, labelA6: String? = nil, labelExport: String? = nil, labelPos: String? = nil, labelType: String, poInvoice: String? = nil) {
            
            self.invoiceType = invoiceType
            
            self.labelA6 = labelA6
            
            self.invoice = invoice
            
            self.labelPos = labelPos
            
            self.invoiceA6 = invoiceA6
            
            self.b2B = b2B
            
            self.label = label
            
            self.labelA4 = labelA4
            
            self.labelType = labelType
            
            self.invoiceExport = invoiceExport
            
            self.creditNoteUrl = creditNoteUrl
            
            self.deliveryChallanA4 = deliveryChallanA4
            
            self.labelExport = labelExport
            
            self.invoiceA4 = invoiceA4
            
            self.invoicePos = invoicePos
            
            self.poInvoice = poInvoice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                invoiceType = try container.decode(String.self, forKey: .invoiceType)
                
            
            
            
                do {
                    labelA6 = try container.decode(String.self, forKey: .labelA6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(String.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelPos = try container.decode(String.self, forKey: .labelPos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceA6 = try container.decode(String.self, forKey: .invoiceA6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2B = try container.decode(String.self, forKey: .b2B)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelA4 = try container.decode(String.self, forKey: .labelA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                labelType = try container.decode(String.self, forKey: .labelType)
                
            
            
            
                do {
                    invoiceExport = try container.decode(String.self, forKey: .invoiceExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteUrl = try container.decode(String.self, forKey: .creditNoteUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChallanA4 = try container.decode(String.self, forKey: .deliveryChallanA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelExport = try container.decode(String.self, forKey: .labelExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicePos = try container.decode(String.self, forKey: .invoicePos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poInvoice = try container.decode(String.self, forKey: .poInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)
            
            
            
            
            try? container.encodeIfPresent(labelA6, forKey: .labelA6)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(labelPos, forKey: .labelPos)
            
            
            
            
            try? container.encodeIfPresent(invoiceA6, forKey: .invoiceA6)
            
            
            
            
            try? container.encodeIfPresent(b2B, forKey: .b2B)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(labelA4, forKey: .labelA4)
            
            
            
            
            try? container.encodeIfPresent(labelType, forKey: .labelType)
            
            
            
            
            try? container.encodeIfPresent(invoiceExport, forKey: .invoiceExport)
            
            
            
            
            try? container.encodeIfPresent(creditNoteUrl, forKey: .creditNoteUrl)
            
            
            
            
            try? container.encodeIfPresent(deliveryChallanA4, forKey: .deliveryChallanA4)
            
            
            
            
            try? container.encodeIfPresent(labelExport, forKey: .labelExport)
            
            
            
            
            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)
            
            
            
            
            try? container.encodeIfPresent(invoicePos, forKey: .invoicePos)
            
            
            
            
            try? container.encodeIfPresent(poInvoice, forKey: .poInvoice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PDFLinks
        Used By: Order
    */

    class PDFLinks: Codable {
        
        
        public var invoiceType: String
        
        public var labelA6: String?
        
        public var invoice: String?
        
        public var labelPos: String?
        
        public var invoiceA6: String?
        
        public var b2B: String?
        
        public var label: String?
        
        public var labelA4: String?
        
        public var labelType: String
        
        public var invoiceExport: String?
        
        public var creditNoteUrl: String?
        
        public var deliveryChallanA4: String?
        
        public var labelExport: String?
        
        public var invoiceA4: String?
        
        public var invoicePos: String?
        
        public var poInvoice: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceType = "invoice_type"
            
            case labelA6 = "label_a6"
            
            case invoice = "invoice"
            
            case labelPos = "label_pos"
            
            case invoiceA6 = "invoice_a6"
            
            case b2B = "b2b"
            
            case label = "label"
            
            case labelA4 = "label_a4"
            
            case labelType = "label_type"
            
            case invoiceExport = "invoice_export"
            
            case creditNoteUrl = "credit_note_url"
            
            case deliveryChallanA4 = "delivery_challan_a4"
            
            case labelExport = "label_export"
            
            case invoiceA4 = "invoice_a4"
            
            case invoicePos = "invoice_pos"
            
            case poInvoice = "po_invoice"
            
        }

        public init(b2B: String? = nil, creditNoteUrl: String? = nil, deliveryChallanA4: String? = nil, invoice: String? = nil, invoiceA4: String? = nil, invoiceA6: String? = nil, invoiceExport: String? = nil, invoicePos: String? = nil, invoiceType: String, label: String? = nil, labelA4: String? = nil, labelA6: String? = nil, labelExport: String? = nil, labelPos: String? = nil, labelType: String, poInvoice: String? = nil) {
            
            self.invoiceType = invoiceType
            
            self.labelA6 = labelA6
            
            self.invoice = invoice
            
            self.labelPos = labelPos
            
            self.invoiceA6 = invoiceA6
            
            self.b2B = b2B
            
            self.label = label
            
            self.labelA4 = labelA4
            
            self.labelType = labelType
            
            self.invoiceExport = invoiceExport
            
            self.creditNoteUrl = creditNoteUrl
            
            self.deliveryChallanA4 = deliveryChallanA4
            
            self.labelExport = labelExport
            
            self.invoiceA4 = invoiceA4
            
            self.invoicePos = invoicePos
            
            self.poInvoice = poInvoice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                invoiceType = try container.decode(String.self, forKey: .invoiceType)
                
            
            
            
                do {
                    labelA6 = try container.decode(String.self, forKey: .labelA6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(String.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelPos = try container.decode(String.self, forKey: .labelPos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceA6 = try container.decode(String.self, forKey: .invoiceA6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2B = try container.decode(String.self, forKey: .b2B)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelA4 = try container.decode(String.self, forKey: .labelA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                labelType = try container.decode(String.self, forKey: .labelType)
                
            
            
            
                do {
                    invoiceExport = try container.decode(String.self, forKey: .invoiceExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteUrl = try container.decode(String.self, forKey: .creditNoteUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChallanA4 = try container.decode(String.self, forKey: .deliveryChallanA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelExport = try container.decode(String.self, forKey: .labelExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicePos = try container.decode(String.self, forKey: .invoicePos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poInvoice = try container.decode(String.self, forKey: .poInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)
            
            
            
            
            try? container.encodeIfPresent(labelA6, forKey: .labelA6)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(labelPos, forKey: .labelPos)
            
            
            
            
            try? container.encodeIfPresent(invoiceA6, forKey: .invoiceA6)
            
            
            
            
            try? container.encodeIfPresent(b2B, forKey: .b2B)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(labelA4, forKey: .labelA4)
            
            
            
            
            try? container.encodeIfPresent(labelType, forKey: .labelType)
            
            
            
            
            try? container.encodeIfPresent(invoiceExport, forKey: .invoiceExport)
            
            
            
            
            try? container.encodeIfPresent(creditNoteUrl, forKey: .creditNoteUrl)
            
            
            
            
            try? container.encodeIfPresent(deliveryChallanA4, forKey: .deliveryChallanA4)
            
            
            
            
            try? container.encodeIfPresent(labelExport, forKey: .labelExport)
            
            
            
            
            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)
            
            
            
            
            try? container.encodeIfPresent(invoicePos, forKey: .invoicePos)
            
            
            
            
            try? container.encodeIfPresent(poInvoice, forKey: .poInvoice)
            
            
        }
        
    }
}


