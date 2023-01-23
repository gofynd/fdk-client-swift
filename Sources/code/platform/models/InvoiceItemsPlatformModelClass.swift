

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceItems
         Used By: Billing
     */

    class InvoiceItems: Codable {
        public var id: String?

        public var currency: String?

        public var plan: InvoiceItemsPlan?

        public var name: String?

        public var quantity: Int?

        public var description: String?

        public var period: InvoiceItemsPeriod?

        public var unitAmount: Double?

        public var amount: Double?

        public var type: String?

        public var invoiceId: String?

        public var createdAt: String?

        public var modifiedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case currency

            case plan

            case name

            case quantity

            case description

            case period

            case unitAmount = "unit_amount"

            case amount

            case type

            case invoiceId = "invoice_id"

            case createdAt = "created_at"

            case modifiedAt = "modified_at"
        }

        public init(amount: Double? = nil, createdAt: String? = nil, currency: String? = nil, description: String? = nil, invoiceId: String? = nil, modifiedAt: String? = nil, name: String? = nil, period: InvoiceItemsPeriod? = nil, plan: InvoiceItemsPlan? = nil, quantity: Int? = nil, type: String? = nil, unitAmount: Double? = nil, id: String? = nil) {
            self.id = id

            self.currency = currency

            self.plan = plan

            self.name = name

            self.quantity = quantity

            self.description = description

            self.period = period

            self.unitAmount = unitAmount

            self.amount = amount

            self.type = type

            self.invoiceId = invoiceId

            self.createdAt = createdAt

            self.modifiedAt = modifiedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

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
                plan = try container.decode(InvoiceItemsPlan.self, forKey: .plan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                period = try container.decode(InvoiceItemsPeriod.self, forKey: .period)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unitAmount = try container.decode(Double.self, forKey: .unitAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(plan, forKey: .plan)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(period, forKey: .period)

            try? container.encodeIfPresent(unitAmount, forKey: .unitAmount)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        }
    }
}
