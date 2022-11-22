

import Foundation
public extension ApplicationClient {
    /*
         Model: BagsData
         Used By: Order
     */
    class BagsData: Codable {
        public var prices: Prices?

        public var quantity: Int?

        public var item: Item?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var id: Int?

        public var financialBreakup: [[String: Any]]?

        public var currentStatus: CurrentStatus?

        public enum CodingKeys: String, CodingKey {
            case prices

            case quantity

            case item

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case id

            case financialBreakup = "financial_breakup"

            case currentStatus = "current_status"
        }

        public init(canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, financialBreakup: [[String: Any]]? = nil, id: Int? = nil, item: Item? = nil, prices: Prices? = nil, quantity: Int? = nil) {
            self.prices = prices

            self.quantity = quantity

            self.item = item

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.id = id

            self.financialBreakup = financialBreakup

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                item = try container.decode(Item.self, forKey: .item)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([[String: Any]].self, forKey: .financialBreakup)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
