

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var article: OrderBagArticle?

        public var quantity: Int?

        public var entityType: String?

        public var bagConfigs: BagConfigs?

        public var parentPromoBags: [String: Any]?

        public var brand: OrderBrandName?

        public var lineNumber: Int?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var financialBreakup: [FinancialBreakup]?

        public var bagId: Int

        public var gstDetails: BagGST?

        public var canCancel: Bool?

        public var item: PlatformItem?

        public var displayName: String?

        public var canReturn: Bool?

        public var prices: Prices?

        public var appliedPromos: [AppliedPromos]?

        public var sellerIdentifier: String?

        public var currentStatus: String?

        public var identifier: String?

        public enum CodingKeys: String, CodingKey {
            case article

            case quantity

            case entityType = "entity_type"

            case bagConfigs = "bag_configs"

            case parentPromoBags = "parent_promo_bags"

            case brand

            case lineNumber = "line_number"

            case deliveryAddress = "delivery_address"

            case financialBreakup = "financial_breakup"

            case bagId = "bag_id"

            case gstDetails = "gst_details"

            case canCancel = "can_cancel"

            case item

            case displayName = "display_name"

            case canReturn = "can_return"

            case prices

            case appliedPromos = "applied_promos"

            case sellerIdentifier = "seller_identifier"

            case currentStatus = "current_status"

            case identifier
        }

        public init(appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGST? = nil, identifier: String? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            self.article = article

            self.quantity = quantity

            self.entityType = entityType

            self.bagConfigs = bagConfigs

            self.parentPromoBags = parentPromoBags

            self.brand = brand

            self.lineNumber = lineNumber

            self.deliveryAddress = deliveryAddress

            self.financialBreakup = financialBreakup

            self.bagId = bagId

            self.gstDetails = gstDetails

            self.canCancel = canCancel

            self.item = item

            self.displayName = displayName

            self.canReturn = canReturn

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.sellerIdentifier = sellerIdentifier

            self.currentStatus = currentStatus

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                article = try container.decode(OrderBagArticle.self, forKey: .article)

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
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

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
                brand = try container.decode(OrderBrandName.self, forKey: .brand)

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
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                gstDetails = try container.decode(BagGST.self, forKey: .gstDetails)

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
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
