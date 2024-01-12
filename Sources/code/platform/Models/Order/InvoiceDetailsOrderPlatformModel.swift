

import Foundation


public extension PlatformClient.Order {
    /*
        Model: InvoiceDetails
        Used By: Order
    */

    class InvoiceDetails: Codable {
        
        
        public var updatedDate: String?
        
        public var storeInvoiceId: String?
        
        public var invoiceUrl: String?
        
        public var labelUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedDate = "updated_date"
            
            case storeInvoiceId = "store_invoice_id"
            
            case invoiceUrl = "invoice_url"
            
            case labelUrl = "label_url"
            
        }

        public init(invoiceUrl: String? = nil, labelUrl: String? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            
            self.updatedDate = updatedDate
            
            self.storeInvoiceId = storeInvoiceId
            
            self.invoiceUrl = invoiceUrl
            
            self.labelUrl = labelUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: InvoiceDetails
        Used By: Order
    */

    class InvoiceDetails: Codable {
        
        
        public var updatedDate: String?
        
        public var storeInvoiceId: String?
        
        public var invoiceUrl: String?
        
        public var labelUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedDate = "updated_date"
            
            case storeInvoiceId = "store_invoice_id"
            
            case invoiceUrl = "invoice_url"
            
            case labelUrl = "label_url"
            
        }

        public init(invoiceUrl: String? = nil, labelUrl: String? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            
            self.updatedDate = updatedDate
            
            self.storeInvoiceId = storeInvoiceId
            
            self.invoiceUrl = invoiceUrl
            
            self.labelUrl = labelUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)
            
            
            
            
            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
            
            
        }
        
    }
}


