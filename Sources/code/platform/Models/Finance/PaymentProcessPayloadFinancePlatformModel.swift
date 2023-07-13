

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: PaymentProcessPayload
         Used By: Finance
     */

    class PaymentProcessPayload: Codable {
        public var sellerId: String?

        public var invoiceNumber: String?

        public var amount: String?

        public var modeOfPayment: String?

        public var currency: String?

        public var meta: [String: Any]?

        public var sourceReference: String?

        public var transactionType: String?

        public var platform: String?

        public var totalAmount: String?

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case invoiceNumber = "invoice_number"

            case amount

            case modeOfPayment = "mode_of_payment"

            case currency

            case meta

            case sourceReference = "source_reference"

            case transactionType = "transaction_type"

            case platform

            case totalAmount = "total_amount"
        }

        public init(amount: String? = nil, currency: String? = nil, invoiceNumber: String? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, platform: String? = nil, sellerId: String? = nil, sourceReference: String? = nil, totalAmount: String? = nil, transactionType: String? = nil) {
            self.sellerId = sellerId

            self.invoiceNumber = invoiceNumber

            self.amount = amount

            self.modeOfPayment = modeOfPayment

            self.currency = currency

            self.meta = meta

            self.sourceReference = sourceReference

            self.transactionType = transactionType

            self.platform = platform

            self.totalAmount = totalAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerId = try container.decode(String.self, forKey: .sellerId)

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
                amount = try container.decode(String.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceReference = try container.decode(String.self, forKey: .sourceReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionType = try container.decode(String.self, forKey: .transactionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalAmount = try container.decode(String.self, forKey: .totalAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sourceReference, forKey: .sourceReference)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
        }
    }
}
