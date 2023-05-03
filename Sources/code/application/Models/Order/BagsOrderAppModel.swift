

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Bags
         Used By: Order
     */
    class Bags: Codable {
        public var financialBreakup: [FinancialBreakup]?

        public var item: Item?

        public var quantity: Int?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var deliveryDate: String?

        public var appliedPromos: [AppliedPromos]?

        public var currencyCode: String?

        public var id: Int?

        public var prices: Prices?

        public var currentStatus: CurrentStatus?

        public var returnableDate: String?

        public var sellerIdentifier: String?

        public var lineNumber: Int?

        public var currencySymbol: String?

        public var parentPromoBags: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case financialBreakup = "financial_breakup"

            case item

            case quantity

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case deliveryDate = "delivery_date"

            case appliedPromos = "applied_promos"

            case currencyCode = "currency_code"

            case id

            case prices

            case currentStatus = "current_status"

            case returnableDate = "returnable_date"

            case sellerIdentifier = "seller_identifier"

            case lineNumber = "line_number"

            case currencySymbol = "currency_symbol"

            case parentPromoBags = "parent_promo_bags"
        }

        public init(appliedPromos: [AppliedPromos]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, currentStatus: CurrentStatus? = nil, deliveryDate: String? = nil, financialBreakup: [FinancialBreakup]? = nil, id: Int? = nil, item: Item? = nil, lineNumber: Int? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            self.financialBreakup = financialBreakup

            self.item = item

            self.quantity = quantity

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.deliveryDate = deliveryDate

            self.appliedPromos = appliedPromos

            self.currencyCode = currencyCode

            self.id = id

            self.prices = prices

            self.currentStatus = currentStatus

            self.returnableDate = returnableDate

            self.sellerIdentifier = sellerIdentifier

            self.lineNumber = lineNumber

            self.currencySymbol = currencySymbol

            self.parentPromoBags = parentPromoBags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

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
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)
        }
    }
}
