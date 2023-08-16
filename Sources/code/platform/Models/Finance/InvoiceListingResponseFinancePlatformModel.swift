

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoiceListingResponse
        Used By: Finance
    */

    class InvoiceListingResponse: Codable {
        
        
        public var unpaidInvoiceData: UnpaidInvoiceDataItems?
        
        public var items: [InvoiceListingResponseItems]?
        
        public var page: Page?
        
        public var itemCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case unpaidInvoiceData = "unpaid_invoice_data"
            
            case items = "items"
            
            case page = "page"
            
            case itemCount = "item_count"
            
        }

        public init(items: [InvoiceListingResponseItems]? = nil, itemCount: Int? = nil, page: Page? = nil, unpaidInvoiceData: UnpaidInvoiceDataItems? = nil) {
            
            self.unpaidInvoiceData = unpaidInvoiceData
            
            self.items = items
            
            self.page = page
            
            self.itemCount = itemCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    unpaidInvoiceData = try container.decode(UnpaidInvoiceDataItems.self, forKey: .unpaidInvoiceData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([InvoiceListingResponseItems].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCount = try container.decode(Int.self, forKey: .itemCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(unpaidInvoiceData, forKey: .unpaidInvoiceData)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(itemCount, forKey: .itemCount)
            
            
        }
        
    }
}




