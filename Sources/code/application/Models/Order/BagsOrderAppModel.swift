

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Bags
         Used By: Order
     */
    class Bags: Codable {
        public var canCancel: Bool?

        public var deliveryDate: String?

        public var id: Int?

        public var currencySymbol: String?

        public var parentPromoBags: [String: Any]?

        public var item: Item?

        public var prices: Prices?

        public var appliedPromos: [AppliedPromos]?

        public var sellerIdentifier: String?

        public var lineNumber: Int?

        public var meta: [String: Any]?

        public var currencyCode: String?

        public var quantity: Int?

        public var currentStatus: CurrentStatus?

        public var financialBreakup: [FinancialBreakup]?

        public var returnableDate: String?

        public var canReturn: Bool?

        public enum CodingKeys: String, CodingKey {
            case canCancel = "can_cancel"

            case deliveryDate = "delivery_date"

            case id

            case currencySymbol = "currency_symbol"

            case parentPromoBags = "parent_promo_bags"

            case item

            case prices

            case appliedPromos = "applied_promos"

            case sellerIdentifier = "seller_identifier"

            case lineNumber = "line_number"

            case meta

            case currencyCode = "currency_code"

            case quantity

            case currentStatus = "current_status"

            case financialBreakup = "financial_breakup"

            case returnableDate = "returnable_date"

            case canReturn = "can_return"
        }

        public init(appliedPromos: [AppliedPromos]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, currentStatus: CurrentStatus? = nil, deliveryDate: String? = nil, financialBreakup: [FinancialBreakup]? = nil, id: Int? = nil, item: Item? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            self.canCancel = canCancel

            self.deliveryDate = deliveryDate

            self.id = id

            self.currencySymbol = currencySymbol

            self.parentPromoBags = parentPromoBags

            self.item = item

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.sellerIdentifier = sellerIdentifier

            self.lineNumber = lineNumber

            self.meta = meta

            self.currencyCode = currencyCode

            self.quantity = quantity

            self.currentStatus = currentStatus

            self.financialBreakup = financialBreakup

            self.returnableDate = returnableDate

            self.canReturn = canReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                item = try container.decode(Item.self, forKey: .item)

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
                appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encode(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
        }
    }
}
