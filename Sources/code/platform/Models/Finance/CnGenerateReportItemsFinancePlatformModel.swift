

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReportItems
         Used By: Finance
     */

    class CnGenerateReportItems: Codable {
        public var dateIssued: String?

        public var status: String?

        public var creditNoteNumber: String?

        public var expiryDate: String?

        public var shipmentId: String?

        public var orderId: String?

        public var totalAmount: Int?

        public var invoiceNumber: String?

        public enum CodingKeys: String, CodingKey {
            case dateIssued = "date_issued"

            case status

            case creditNoteNumber = "credit_note_number"

            case expiryDate = "expiry_date"

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case totalAmount = "total_amount"

            case invoiceNumber = "invoice_number"
        }

        public init(creditNoteNumber: String? = nil, dateIssued: String? = nil, expiryDate: String? = nil, invoiceNumber: String? = nil, orderId: String? = nil, shipmentId: String? = nil, status: String? = nil, totalAmount: Int? = nil) {
            self.dateIssued = dateIssued

            self.status = status

            self.creditNoteNumber = creditNoteNumber

            self.expiryDate = expiryDate

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.totalAmount = totalAmount

            self.invoiceNumber = invoiceNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateIssued = try container.decode(String.self, forKey: .dateIssued)

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
                creditNoteNumber = try container.decode(String.self, forKey: .creditNoteNumber)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateIssued, forKey: .dateIssued)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(creditNoteNumber, forKey: .creditNoteNumber)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
        }
    }
}
