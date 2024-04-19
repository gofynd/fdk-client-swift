

import Foundation


public extension PlatformClient.Order {
    /*
        Model: InvoiceInfo
        Used By: Order
    */

    class InvoiceInfo: Codable {
        
        
        public var storeInvoiceId: String?
        
        public var invoiceUrl: String?
        
        public var updatedDate: String?
        
        public var externalInvoiceId: String?
        
        public var labelUrl: String?
        
        public var creditNoteId: String?
        
        public var links: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeInvoiceId = "store_invoice_id"
            
            case invoiceUrl = "invoice_url"
            
            case updatedDate = "updated_date"
            
            case externalInvoiceId = "external_invoice_id"
            
            case labelUrl = "label_url"
            
            case creditNoteId = "credit_note_id"
            
            case links = "links"
            
        }

        public init(creditNoteId: String? = nil, externalInvoiceId: String? = nil, invoiceUrl: String? = nil, labelUrl: String? = nil, links: [String: Any]? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            
            self.storeInvoiceId = storeInvoiceId
            
            self.invoiceUrl = invoiceUrl
            
            self.updatedDate = updatedDate
            
            self.externalInvoiceId = externalInvoiceId
            
            self.labelUrl = labelUrl
            
            self.creditNoteId = creditNoteId
            
            self.links = links
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalInvoiceId = try container.decode(String.self, forKey: .externalInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    links = try container.decode([String: Any].self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encode(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encode(updatedDate, forKey: .updatedDate)
            
            
            
            
            try? container.encode(externalInvoiceId, forKey: .externalInvoiceId)
            
            
            
            
            try? container.encode(labelUrl, forKey: .labelUrl)
            
            
            
            
            try? container.encode(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: InvoiceInfo
        Used By: Order
    */

    class InvoiceInfo: Codable {
        
        
        public var storeInvoiceId: String?
        
        public var invoiceUrl: String?
        
        public var updatedDate: String?
        
        public var externalInvoiceId: String?
        
        public var labelUrl: String?
        
        public var creditNoteId: String?
        
        public var links: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeInvoiceId = "store_invoice_id"
            
            case invoiceUrl = "invoice_url"
            
            case updatedDate = "updated_date"
            
            case externalInvoiceId = "external_invoice_id"
            
            case labelUrl = "label_url"
            
            case creditNoteId = "credit_note_id"
            
            case links = "links"
            
        }

        public init(creditNoteId: String? = nil, externalInvoiceId: String? = nil, invoiceUrl: String? = nil, labelUrl: String? = nil, links: [String: Any]? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            
            self.storeInvoiceId = storeInvoiceId
            
            self.invoiceUrl = invoiceUrl
            
            self.updatedDate = updatedDate
            
            self.externalInvoiceId = externalInvoiceId
            
            self.labelUrl = labelUrl
            
            self.creditNoteId = creditNoteId
            
            self.links = links
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalInvoiceId = try container.decode(String.self, forKey: .externalInvoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    links = try container.decode([String: Any].self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encode(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encode(updatedDate, forKey: .updatedDate)
            
            
            
            
            try? container.encode(externalInvoiceId, forKey: .externalInvoiceId)
            
            
            
            
            try? container.encode(labelUrl, forKey: .labelUrl)
            
            
            
            
            try? container.encode(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
        }
        
    }
}


