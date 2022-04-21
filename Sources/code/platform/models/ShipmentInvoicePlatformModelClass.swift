

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInvoice
         Used By: Order
     */

    class ShipmentInvoice: Codable {
        public var paymentType: String?

        public var updatedDate: String?

        public var invoiceUrl: String?

        public var labelUrl: String?

        public var paymentMode: String?

        public var amountToCollect: Double?

        public var rtoAddress: RtoAddress?

        public enum CodingKeys: String, CodingKey {
            case paymentType = "payment_type"

            case updatedDate = "updated_date"

            case invoiceUrl = "invoice_url"

            case labelUrl = "label_url"

            case paymentMode = "payment_mode"

            case amountToCollect = "amount_to_collect"

            case rtoAddress = "rto_address"
        }

        public init(amountToCollect: Double? = nil, invoiceUrl: String? = nil, labelUrl: String? = nil, paymentMode: String? = nil, paymentType: String? = nil, rtoAddress: RtoAddress? = nil, updatedDate: String? = nil) {
            self.paymentType = paymentType

            self.updatedDate = updatedDate

            self.invoiceUrl = invoiceUrl

            self.labelUrl = labelUrl

            self.paymentMode = paymentMode

            self.amountToCollect = amountToCollect

            self.rtoAddress = rtoAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedDate = try container.decode(String.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelUrl = try container.decode(String.self, forKey: .labelUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountToCollect = try container.decode(Double.self, forKey: .amountToCollect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rtoAddress = try container.decode(RtoAddress.self, forKey: .rtoAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountToCollect, forKey: .amountToCollect)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
        }
    }
}
