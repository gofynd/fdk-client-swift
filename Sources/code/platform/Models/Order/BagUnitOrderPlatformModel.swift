

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var status: BagReturnableCancelableStatus

        public var prices: Prices?

        public var bagStatus: [BagStatusHistory]?

        public var canReturn: Bool?

        public var gst: GSTDetailsData?

        public var brand: ShipmentListingBrand?

        public var affiliateBagDetails: AffiliateBagDetails?

        public var article: Article?

        public var entityType: String?

        public var currentStatus: BagStatusHistory

        public var productQuantity: Int

        public var reasons: [[String: Any]]?

        public var bagType: String?

        public var financialBreakup: [FinancialBreakup]

        public var bagExpiryDate: String?

        public var displayName: String?

        public var currentOperationalStatus: BagStatusHistory

        public var dates: Dates?

        public var meta: [String: Any]?

        public var bagId: Int

        public var size: String?

        public var canCancel: Bool?

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case status

            case prices

            case bagStatus = "bag_status"

            case canReturn = "can_return"

            case gst

            case brand

            case affiliateBagDetails = "affiliate_bag_details"

            case article

            case entityType = "entity_type"

            case currentStatus = "current_status"

            case productQuantity = "product_quantity"

            case reasons

            case bagType = "bag_type"

            case financialBreakup = "financial_breakup"

            case bagExpiryDate = "bag_expiry_date"

            case displayName = "display_name"

            case currentOperationalStatus = "current_operational_status"

            case dates

            case meta

            case bagId = "bag_id"

            case size

            case canCancel = "can_cancel"

            case item
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, article: Article? = nil, bagExpiryDate: String? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, bagType: String? = nil, brand: ShipmentListingBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gst: GSTDetailsData? = nil, item: PlatformItem? = nil, meta: [String: Any]? = nil, prices: Prices? = nil, productQuantity: Int, reasons: [[String: Any]]? = nil, size: String? = nil, status: BagReturnableCancelableStatus) {
            self.status = status

            self.prices = prices

            self.bagStatus = bagStatus

            self.canReturn = canReturn

            self.gst = gst

            self.brand = brand

            self.affiliateBagDetails = affiliateBagDetails

            self.article = article

            self.entityType = entityType

            self.currentStatus = currentStatus

            self.productQuantity = productQuantity

            self.reasons = reasons

            self.bagType = bagType

            self.financialBreakup = financialBreakup

            self.bagExpiryDate = bagExpiryDate

            self.displayName = displayName

            self.currentOperationalStatus = currentOperationalStatus

            self.dates = dates

            self.meta = meta

            self.bagId = bagId

            self.size = size

            self.canCancel = canCancel

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

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
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ShipmentListingBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(Article.self, forKey: .article)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            productQuantity = try container.decode(Int.self, forKey: .productQuantity)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagType = try container.decode(String.self, forKey: .bagType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                bagExpiryDate = try container.decode(String.self, forKey: .bagExpiryDate)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                size = try container.decode(String.self, forKey: .size)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(productQuantity, forKey: .productQuantity)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagType, forKey: .bagType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(bagExpiryDate, forKey: .bagExpiryDate)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var status: BagReturnableCancelableStatus

        public var prices: Prices?

        public var bagStatus: [BagStatusHistory]?

        public var canReturn: Bool?

        public var gst: GSTDetailsData?

        public var brand: ShipmentListingBrand?

        public var affiliateBagDetails: AffiliateBagDetails?

        public var article: Article?

        public var entityType: String?

        public var currentStatus: BagStatusHistory

        public var productQuantity: Int

        public var reasons: [[String: Any]]?

        public var bagType: String?

        public var financialBreakup: [FinancialBreakup]

        public var bagExpiryDate: String?

        public var displayName: String?

        public var currentOperationalStatus: BagStatusHistory

        public var dates: Dates?

        public var meta: [String: Any]?

        public var bagId: Int

        public var size: String?

        public var canCancel: Bool?

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case status

            case prices

            case bagStatus = "bag_status"

            case canReturn = "can_return"

            case gst

            case brand

            case affiliateBagDetails = "affiliate_bag_details"

            case article

            case entityType = "entity_type"

            case currentStatus = "current_status"

            case productQuantity = "product_quantity"

            case reasons

            case bagType = "bag_type"

            case financialBreakup = "financial_breakup"

            case bagExpiryDate = "bag_expiry_date"

            case displayName = "display_name"

            case currentOperationalStatus = "current_operational_status"

            case dates

            case meta

            case bagId = "bag_id"

            case size

            case canCancel = "can_cancel"

            case item
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, article: Article? = nil, bagExpiryDate: String? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, bagType: String? = nil, brand: ShipmentListingBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gst: GSTDetailsData? = nil, item: PlatformItem? = nil, meta: [String: Any]? = nil, prices: Prices? = nil, productQuantity: Int, reasons: [[String: Any]]? = nil, size: String? = nil, status: BagReturnableCancelableStatus) {
            self.status = status

            self.prices = prices

            self.bagStatus = bagStatus

            self.canReturn = canReturn

            self.gst = gst

            self.brand = brand

            self.affiliateBagDetails = affiliateBagDetails

            self.article = article

            self.entityType = entityType

            self.currentStatus = currentStatus

            self.productQuantity = productQuantity

            self.reasons = reasons

            self.bagType = bagType

            self.financialBreakup = financialBreakup

            self.bagExpiryDate = bagExpiryDate

            self.displayName = displayName

            self.currentOperationalStatus = currentOperationalStatus

            self.dates = dates

            self.meta = meta

            self.bagId = bagId

            self.size = size

            self.canCancel = canCancel

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

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
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ShipmentListingBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(Article.self, forKey: .article)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            productQuantity = try container.decode(Int.self, forKey: .productQuantity)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagType = try container.decode(String.self, forKey: .bagType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                bagExpiryDate = try container.decode(String.self, forKey: .bagExpiryDate)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                size = try container.decode(String.self, forKey: .size)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(productQuantity, forKey: .productQuantity)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagType, forKey: .bagType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(bagExpiryDate, forKey: .bagExpiryDate)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
