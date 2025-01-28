

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: InvoiceData
        Used By: Billing
    */

    class InvoiceData: Codable {
        
        
        public var invoice: InvoiceDetailsData?
        
        public var invoiceItems: [InvoiceItems]?
        
        public var shopsenseDetails: CompanyInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoice = "invoice"
            
            case invoiceItems = "invoice_items"
            
            case shopsenseDetails = "shopsense_details"
            
        }

        public init(invoice: InvoiceDetailsData? = nil, invoiceItems: [InvoiceItems]? = nil, shopsenseDetails: CompanyInfo? = nil) {
            
            self.invoice = invoice
            
            self.invoiceItems = invoiceItems
            
            self.shopsenseDetails = shopsenseDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoice = try container.decode(InvoiceDetailsData.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceItems = try container.decode([InvoiceItems].self, forKey: .invoiceItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shopsenseDetails = try container.decode(CompanyInfo.self, forKey: .shopsenseDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(invoiceItems, forKey: .invoiceItems)
            
            
            
            
            try? container.encodeIfPresent(shopsenseDetails, forKey: .shopsenseDetails)
            
            
        }
        
    }
}




