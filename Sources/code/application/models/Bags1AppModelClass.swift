

import Foundation
public extension ApplicationClient {
    /*
         Model: Bags1
         Used By: Order
     */
    class Bags1: Codable {
        public var currentStatus: CurrentStatus?

        public var returnableDate: String?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var appliedPromos: [AppliedPromos]?

        public var prices: Prices?

        public var sellerIdentifier: String?

        public var deliveryDate: String?

        public var financialBreakup: [FinancialBreakup]?

        public var item: Item1?

        public var id: Int?

        public var parentPromoBags: [String: Any]?

        public var quantity: Int?

        public var lineNumber: Int?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case returnableDate = "returnable_date"

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case appliedPromos = "applied_promos"

            case prices

            case sellerIdentifier = "seller_identifier"

            case deliveryDate = "delivery_date"

            case financialBreakup = "financial_breakup"

            case item

            case id

            case parentPromoBags = "parent_promo_bags"

            case quantity

            case lineNumber = "line_number"
        }

        public init(appliedPromos: [AppliedPromos]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryDate: String? = nil, financialBreakup: [FinancialBreakup]? = nil, id: Int? = nil, item: Item1? = nil, lineNumber: Int? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            self.currentStatus = currentStatus

            self.returnableDate = returnableDate

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.appliedPromos = appliedPromos

            self.prices = prices

            self.sellerIdentifier = sellerIdentifier

            self.deliveryDate = deliveryDate

            self.financialBreakup = financialBreakup

            self.item = item

            self.id = id

            self.parentPromoBags = parentPromoBags

            self.quantity = quantity

            self.lineNumber = lineNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(Item1.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
        }
    }
}
