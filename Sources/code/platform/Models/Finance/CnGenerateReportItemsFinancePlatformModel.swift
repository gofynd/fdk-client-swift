

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReportItems
         Used By: Finance
     */

    class CnGenerateReportItems: Codable {
        public var totalAmount: Int?

        public var status: String?

        public var invoiceNumber: String?

        public var shipmentId: String?

        public var dateIssued: String?

        public var expiryDate: String?

        public var orderId: String?

        public var creditNoteNumber: String?

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case status

            case invoiceNumber = "invoice_number"

            case shipmentId = "shipment_id"

            case dateIssued = "date_issued"

            case expiryDate = "expiry_date"

            case orderId = "order_id"

            case creditNoteNumber = "credit_note_number"
        }

        public init(creditNoteNumber: String? = nil, dateIssued: String? = nil, expiryDate: String? = nil, invoiceNumber: String? = nil, orderId: String? = nil, shipmentId: String? = nil, status: String? = nil, totalAmount: Int? = nil) {
            self.totalAmount = totalAmount

            self.status = status

            self.invoiceNumber = invoiceNumber

            self.shipmentId = shipmentId

            self.dateIssued = dateIssued

            self.expiryDate = expiryDate

            self.orderId = orderId

            self.creditNoteNumber = creditNoteNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateIssued = try container.decode(String.self, forKey: .dateIssued)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiryDate = try container.decode(String.self, forKey: .expiryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteNumber = try container.decode(String.self, forKey: .creditNoteNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dateIssued, forKey: .dateIssued)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(creditNoteNumber, forKey: .creditNoteNumber)
        }
    }
}
