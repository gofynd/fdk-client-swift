

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var quantity: Int?

        public var financialBreakup: FinancialBreakup?

        public var displayName: String?

        public var sellerIdentifier: String?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var canReturn: Bool?

        public var bagId: Int

        public var lineNumber: Int?

        public var brand: OrderBrandName?

        public var currentStatus: CurrentStatus?

        public var bagConfigs: BagConfigs?

        public var meta: BagMeta?

        public var paymentMethods: [BagPaymentMethods]?

        public var prices: Prices?

        public var parentPromoBags: [String: Any]?

        public var item: PlatformItem?

        public var identifier: String?

        public var appliedPromos: [AppliedPromos]?

        public var affiliateBagDetails: AffiliateBagsDetails?

        public var article: OrderBagArticle?

        public var entityType: String?

        public var canCancel: Bool?

        public var groupId: String?

        public var gstDetails: BagGST?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case financialBreakup = "financial_breakup"

            case displayName = "display_name"

            case sellerIdentifier = "seller_identifier"

            case deliveryAddress = "delivery_address"

            case canReturn = "can_return"

            case bagId = "bag_id"

            case lineNumber = "line_number"

            case brand

            case currentStatus = "current_status"

            case bagConfigs = "bag_configs"

            case meta

            case paymentMethods = "payment_methods"

            case prices

            case parentPromoBags = "parent_promo_bags"

            case item

            case identifier

            case appliedPromos = "applied_promos"

            case affiliateBagDetails = "affiliate_bag_details"

            case article

            case entityType = "entity_type"

            case canCancel = "can_cancel"

            case groupId = "group_id"

            case gstDetails = "gst_details"
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: BagGST? = nil, identifier: String? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, parentPromoBags: [String: Any]? = nil, paymentMethods: [BagPaymentMethods]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.displayName = displayName

            self.sellerIdentifier = sellerIdentifier

            self.deliveryAddress = deliveryAddress

            self.canReturn = canReturn

            self.bagId = bagId

            self.lineNumber = lineNumber

            self.brand = brand

            self.currentStatus = currentStatus

            self.bagConfigs = bagConfigs

            self.meta = meta

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.parentPromoBags = parentPromoBags

            self.item = item

            self.identifier = identifier

            self.appliedPromos = appliedPromos

            self.affiliateBagDetails = affiliateBagDetails

            self.article = article

            self.entityType = entityType

            self.canCancel = canCancel

            self.groupId = groupId

            self.gstDetails = gstDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)

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
                paymentMethods = try container.decode([BagPaymentMethods].self, forKey: .paymentMethods)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                identifier = try container.decode(String.self, forKey: .identifier)

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
                affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)

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

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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
                groupId = try container.decode(String.self, forKey: .groupId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var quantity: Int?

        public var financialBreakup: FinancialBreakup?

        public var displayName: String?

        public var sellerIdentifier: String?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var canReturn: Bool?

        public var bagId: Int

        public var lineNumber: Int?

        public var brand: OrderBrandName?

        public var currentStatus: CurrentStatus?

        public var bagConfigs: BagConfigs?

        public var meta: BagMeta?

        public var paymentMethods: [BagPaymentMethods]?

        public var prices: Prices?

        public var parentPromoBags: [String: Any]?

        public var item: PlatformItem?

        public var identifier: String?

        public var appliedPromos: [AppliedPromos]?

        public var affiliateBagDetails: AffiliateBagsDetails?

        public var article: OrderBagArticle?

        public var entityType: String?

        public var canCancel: Bool?

        public var groupId: String?

        public var gstDetails: BagGST?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case financialBreakup = "financial_breakup"

            case displayName = "display_name"

            case sellerIdentifier = "seller_identifier"

            case deliveryAddress = "delivery_address"

            case canReturn = "can_return"

            case bagId = "bag_id"

            case lineNumber = "line_number"

            case brand

            case currentStatus = "current_status"

            case bagConfigs = "bag_configs"

            case meta

            case paymentMethods = "payment_methods"

            case prices

            case parentPromoBags = "parent_promo_bags"

            case item

            case identifier

            case appliedPromos = "applied_promos"

            case affiliateBagDetails = "affiliate_bag_details"

            case article

            case entityType = "entity_type"

            case canCancel = "can_cancel"

            case groupId = "group_id"

            case gstDetails = "gst_details"
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: BagGST? = nil, identifier: String? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, parentPromoBags: [String: Any]? = nil, paymentMethods: [BagPaymentMethods]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.displayName = displayName

            self.sellerIdentifier = sellerIdentifier

            self.deliveryAddress = deliveryAddress

            self.canReturn = canReturn

            self.bagId = bagId

            self.lineNumber = lineNumber

            self.brand = brand

            self.currentStatus = currentStatus

            self.bagConfigs = bagConfigs

            self.meta = meta

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.parentPromoBags = parentPromoBags

            self.item = item

            self.identifier = identifier

            self.appliedPromos = appliedPromos

            self.affiliateBagDetails = affiliateBagDetails

            self.article = article

            self.entityType = entityType

            self.canCancel = canCancel

            self.groupId = groupId

            self.gstDetails = gstDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)

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
                paymentMethods = try container.decode([BagPaymentMethods].self, forKey: .paymentMethods)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                identifier = try container.decode(String.self, forKey: .identifier)

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
                affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)

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

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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
                groupId = try container.decode(String.self, forKey: .groupId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
        }
    }
}
