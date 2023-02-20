

import Foundation
public extension PlatformClient {
    /*
         Model: BulkInvoiceLabelResponse
         Used By: Order
     */

    class BulkInvoiceLabelResponse: Codable {
        public var invoiceStatus: String?

        public var storeId: String?

        public var label: [String: Any]?

        public var batchId: String

        public var doInvoiceLabelGenerated: Bool

        public var data: [String: Any]?

        public var storeCode: String?

        public var storeName: String?

        public var invoice: [String: Any]?

        public var companyId: String?

        public enum CodingKeys: String, CodingKey {
            case invoiceStatus = "invoice_status"

            case storeId = "store_id"

            case label

            case batchId = "batch_id"

            case doInvoiceLabelGenerated = "do_invoice_label_generated"

            case data

            case storeCode = "store_code"

            case storeName = "store_name"

            case invoice

            case companyId = "company_id"
        }

        public init(batchId: String, companyId: String? = nil, data: [String: Any]? = nil, doInvoiceLabelGenerated: Bool, invoice: [String: Any]? = nil, invoiceStatus: String? = nil, label: [String: Any]? = nil, storeCode: String? = nil, storeId: String? = nil, storeName: String? = nil) {
            self.invoiceStatus = invoiceStatus

            self.storeId = storeId

            self.label = label

            self.batchId = batchId

            self.doInvoiceLabelGenerated = doInvoiceLabelGenerated

            self.data = data

            self.storeCode = storeCode

            self.storeName = storeName

            self.invoice = invoice

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceStatus = try container.decode(String.self, forKey: .invoiceStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(String.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode([String: Any].self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            doInvoiceLabelGenerated = try container.decode(Bool.self, forKey: .doInvoiceLabelGenerated)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode([String: Any].self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceStatus, forKey: .invoiceStatus)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(doInvoiceLabelGenerated, forKey: .doInvoiceLabelGenerated)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
