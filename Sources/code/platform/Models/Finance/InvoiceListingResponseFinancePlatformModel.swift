

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceListingResponse
         Used By: Finance
     */

    class InvoiceListingResponse: Codable {
        public var page: Page?

        public var itemCount: Int?

        public var unpaidInvoiceData: UnpaidInvoiceDataItems?

        public var items: [InvoiceListingResponseItems]?

        public enum CodingKeys: String, CodingKey {
            case page

            case itemCount = "item_count"

            case unpaidInvoiceData = "unpaid_invoice_data"

            case items
        }

        public init(items: [InvoiceListingResponseItems]? = nil, itemCount: Int? = nil, page: Page? = nil, unpaidInvoiceData: UnpaidInvoiceDataItems? = nil) {
            self.page = page

            self.itemCount = itemCount

            self.unpaidInvoiceData = unpaidInvoiceData

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCount = try container.decode(Int.self, forKey: .itemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unpaidInvoiceData = try container.decode(UnpaidInvoiceDataItems.self, forKey: .unpaidInvoiceData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([InvoiceListingResponseItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)

            try? container.encodeIfPresent(unpaidInvoiceData, forKey: .unpaidInvoiceData)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
