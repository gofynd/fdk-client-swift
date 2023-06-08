

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var currentStatus: CurrentStatus?

        public var item: PlatformItem?

        public var appliedPromos: [AppliedPromos]?

        public var quantity: Int?

        public var lineNumber: Int?

        public var bagId: Int

        public var displayName: String?

        public var groupId: String?

        public var sellerIdentifier: String?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var prices: Prices?

        public var identifier: String?

        public var gstDetails: BagGST?

        public var affiliateBagDetails: AffiliateBagsDetails?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var financialBreakup: FinancialBreakup?

        public var brand: OrderBrandName?

        public var bagConfigs: BagConfigs?

        public var meta: BagMeta?

        public var article: OrderBagArticle?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case item

            case appliedPromos = "applied_promos"

            case quantity

            case lineNumber = "line_number"

            case bagId = "bag_id"

            case displayName = "display_name"

            case groupId = "group_id"

            case sellerIdentifier = "seller_identifier"

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case prices

            case identifier

            case gstDetails = "gst_details"

            case affiliateBagDetails = "affiliate_bag_details"

            case deliveryAddress = "delivery_address"

            case financialBreakup = "financial_breakup"

            case brand

            case bagConfigs = "bag_configs"

            case meta

            case article
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: BagGST? = nil, identifier: String? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            self.currentStatus = currentStatus

            self.item = item

            self.appliedPromos = appliedPromos

            self.quantity = quantity

            self.lineNumber = lineNumber

            self.bagId = bagId

            self.displayName = displayName

            self.groupId = groupId

            self.sellerIdentifier = sellerIdentifier

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.prices = prices

            self.identifier = identifier

            self.gstDetails = gstDetails

            self.affiliateBagDetails = affiliateBagDetails

            self.deliveryAddress = deliveryAddress

            self.financialBreakup = financialBreakup

            self.brand = brand

            self.bagConfigs = bagConfigs

            self.meta = meta

            self.article = article
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
                item = try container.decode(PlatformItem.self, forKey: .item)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

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
                entityType = try container.decode(String.self, forKey: .entityType)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                gstDetails = try container.decode(BagGST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)

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
                financialBreakup = try container.decode(FinancialBreakup.self, forKey: .financialBreakup)

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
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(OrderBagArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var currentStatus: CurrentStatus?

        public var item: PlatformItem?

        public var appliedPromos: [AppliedPromos]?

        public var quantity: Int?

        public var lineNumber: Int?

        public var bagId: Int

        public var displayName: String?

        public var groupId: String?

        public var sellerIdentifier: String?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var prices: Prices?

        public var identifier: String?

        public var gstDetails: BagGST?

        public var affiliateBagDetails: AffiliateBagsDetails?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var financialBreakup: FinancialBreakup?

        public var brand: OrderBrandName?

        public var bagConfigs: BagConfigs?

        public var meta: BagMeta?

        public var article: OrderBagArticle?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case item

            case appliedPromos = "applied_promos"

            case quantity

            case lineNumber = "line_number"

            case bagId = "bag_id"

            case displayName = "display_name"

            case groupId = "group_id"

            case sellerIdentifier = "seller_identifier"

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case prices

            case identifier

            case gstDetails = "gst_details"

            case affiliateBagDetails = "affiliate_bag_details"

            case deliveryAddress = "delivery_address"

            case financialBreakup = "financial_breakup"

            case brand

            case bagConfigs = "bag_configs"

            case meta

            case article
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: BagGST? = nil, identifier: String? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            self.currentStatus = currentStatus

            self.item = item

            self.appliedPromos = appliedPromos

            self.quantity = quantity

            self.lineNumber = lineNumber

            self.bagId = bagId

            self.displayName = displayName

            self.groupId = groupId

            self.sellerIdentifier = sellerIdentifier

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.prices = prices

            self.identifier = identifier

            self.gstDetails = gstDetails

            self.affiliateBagDetails = affiliateBagDetails

            self.deliveryAddress = deliveryAddress

            self.financialBreakup = financialBreakup

            self.brand = brand

            self.bagConfigs = bagConfigs

            self.meta = meta

            self.article = article
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
                item = try container.decode(PlatformItem.self, forKey: .item)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

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
                entityType = try container.decode(String.self, forKey: .entityType)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                gstDetails = try container.decode(BagGST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)

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
                financialBreakup = try container.decode(FinancialBreakup.self, forKey: .financialBreakup)

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
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(OrderBagArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}
