

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetails
         Used By: Billing
     */

    class InvoiceDetails: Codable {
        public var period: InvoiceDetailsPeriod?

        public var client: InvoiceDetailsClient?

        public var autoAdvance: Bool?

        public var currency: String?

        public var paid: Bool?

        public var attemp: Int?

        public var id: String?

        public var collectionMethod: String?

        public var subscriberId: String?

        public var invoiceUrl: String?

        public var number: String?

        public var pgData: [String: Any]?

        public var receiptNumber: String?

        public var statementDescriptor: String?

        public var currentStatus: String?

        public var statusTrail: [InvoiceDetailsStatusTrail]?

        public var subtotal: Double?

        public var total: Double?

        public var subscription: String?

        public var nextActionTime: String?

        public var createdAt: String?

        public var modifiedAt: String?

        public var hashIdentifier: String?

        public var paymentMethod: InvoicePaymentMethod?

        public enum CodingKeys: String, CodingKey {
            case period

            case client

            case autoAdvance = "auto_advance"

            case currency

            case paid

            case attemp

            case id = "_id"

            case collectionMethod = "collection_method"

            case subscriberId = "subscriber_id"

            case invoiceUrl = "invoice_url"

            case number

            case pgData = "pg_data"

            case receiptNumber = "receipt_number"

            case statementDescriptor = "statement_descriptor"

            case currentStatus = "current_status"

            case statusTrail = "status_trail"

            case subtotal

            case total

            case subscription

            case nextActionTime = "next_action_time"

            case createdAt = "created_at"

            case modifiedAt = "modified_at"

            case hashIdentifier = "hash_identifier"

            case paymentMethod = "payment_method"
        }

        public init(attemp: Int? = nil, autoAdvance: Bool? = nil, client: InvoiceDetailsClient? = nil, collectionMethod: String? = nil, createdAt: String? = nil, currency: String? = nil, currentStatus: String? = nil, hashIdentifier: String? = nil, invoiceUrl: String? = nil, modifiedAt: String? = nil, nextActionTime: String? = nil, number: String? = nil, paid: Bool? = nil, paymentMethod: InvoicePaymentMethod? = nil, period: InvoiceDetailsPeriod? = nil, pgData: [String: Any]? = nil, receiptNumber: String? = nil, statementDescriptor: String? = nil, statusTrail: [InvoiceDetailsStatusTrail]? = nil, subscriberId: String? = nil, subscription: String? = nil, subtotal: Double? = nil, total: Double? = nil, id: String? = nil) {
            self.period = period

            self.client = client

            self.autoAdvance = autoAdvance

            self.currency = currency

            self.paid = paid

            self.attemp = attemp

            self.id = id

            self.collectionMethod = collectionMethod

            self.subscriberId = subscriberId

            self.invoiceUrl = invoiceUrl

            self.number = number

            self.pgData = pgData

            self.receiptNumber = receiptNumber

            self.statementDescriptor = statementDescriptor

            self.currentStatus = currentStatus

            self.statusTrail = statusTrail

            self.subtotal = subtotal

            self.total = total

            self.subscription = subscription

            self.nextActionTime = nextActionTime

            self.createdAt = createdAt

            self.modifiedAt = modifiedAt

            self.hashIdentifier = hashIdentifier

            self.paymentMethod = paymentMethod
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                period = try container.decode(InvoiceDetailsPeriod.self, forKey: .period)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                client = try container.decode(InvoiceDetailsClient.self, forKey: .client)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoAdvance = try container.decode(Bool.self, forKey: .autoAdvance)

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
                paid = try container.decode(Bool.self, forKey: .paid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attemp = try container.decode(Int.self, forKey: .attemp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectionMethod = try container.decode(String.self, forKey: .collectionMethod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(String.self, forKey: .subscriberId)

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
                number = try container.decode(String.self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pgData = try container.decode([String: Any].self, forKey: .pgData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                receiptNumber = try container.decode(String.self, forKey: .receiptNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statementDescriptor = try container.decode(String.self, forKey: .statementDescriptor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statusTrail = try container.decode([InvoiceDetailsStatusTrail].self, forKey: .statusTrail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotal = try container.decode(Double.self, forKey: .subtotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscription = try container.decode(String.self, forKey: .subscription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextActionTime = try container.decode(String.self, forKey: .nextActionTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hashIdentifier = try container.decode(String.self, forKey: .hashIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethod = try container.decode(InvoicePaymentMethod.self, forKey: .paymentMethod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(period, forKey: .period)

            try? container.encodeIfPresent(client, forKey: .client)

            try? container.encodeIfPresent(autoAdvance, forKey: .autoAdvance)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paid, forKey: .paid)

            try? container.encodeIfPresent(attemp, forKey: .attemp)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encodeIfPresent(number, forKey: .number)

            try? container.encodeIfPresent(pgData, forKey: .pgData)

            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)

            try? container.encodeIfPresent(statementDescriptor, forKey: .statementDescriptor)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(statusTrail, forKey: .statusTrail)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(subscription, forKey: .subscription)

            try? container.encodeIfPresent(nextActionTime, forKey: .nextActionTime)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)

            try? container.encodeIfPresent(hashIdentifier, forKey: .hashIdentifier)

            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        }
    }
}
