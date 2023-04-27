

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var discount: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var storeId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var sku: String

        public var hsnCodeId: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case discount

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case identifier

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case sku

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.discount = discount

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.storeId = storeId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var discount: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var storeId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var sku: String

        public var hsnCodeId: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case discount

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case identifier

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case sku

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.discount = discount

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.storeId = storeId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}