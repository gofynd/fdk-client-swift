

import Foundation
public extension PlatformClient {
    /*
         Model: BagsDetails
         Used By: Order
     */

    class BagsDetails: Codable {
        public var financialBreakup: [BagFinancialBreakup]?

        public var status: BagCurrStatus?

        public var item: BagItem?

        public var article: BagArticle?

        public var id: Int?

        public var prices: BagPrices?

        public var gstDetails: GstDetails?

        public var breakupValues: BagBreakupValues?

        public var updateTime: Int?

        public var currentStatus: BagCurrentStatus?

        public var bagStatus: BagStatus?

        public var canCancel: Bool?

        public var canReturn: Bool?

        public var paymentMethods: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case financialBreakup = "financial_breakup"

            case status

            case item

            case article

            case id

            case prices

            case gstDetails = "gst_details"

            case breakupValues = "breakup_values"

            case updateTime = "update_time"

            case currentStatus = "current_status"

            case bagStatus = "bag_status"

            case canCancel = "can_cancel"

            case canReturn = "can_return"

            case paymentMethods = "payment_methods"
        }

        public init(article: BagArticle? = nil, bagStatus: BagStatus? = nil, breakupValues: BagBreakupValues? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: BagCurrentStatus? = nil, financialBreakup: [BagFinancialBreakup]? = nil, gstDetails: GstDetails? = nil, id: Int? = nil, item: BagItem? = nil, paymentMethods: [String: Any]? = nil, prices: BagPrices? = nil, status: BagCurrStatus? = nil, updateTime: Int? = nil) {
            self.financialBreakup = financialBreakup

            self.status = status

            self.item = item

            self.article = article

            self.id = id

            self.prices = prices

            self.gstDetails = gstDetails

            self.breakupValues = breakupValues

            self.updateTime = updateTime

            self.currentStatus = currentStatus

            self.bagStatus = bagStatus

            self.canCancel = canCancel

            self.canReturn = canReturn

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                financialBreakup = try container.decode([BagFinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(BagCurrStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(BagItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(BagArticle.self, forKey: .article)

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
                prices = try container.decode(BagPrices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(GstDetails.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(BagBreakupValues.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updateTime = try container.decode(Int.self, forKey: .updateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatus = try container.decode(BagStatus.self, forKey: .bagStatus)

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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(updateTime, forKey: .updateTime)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
