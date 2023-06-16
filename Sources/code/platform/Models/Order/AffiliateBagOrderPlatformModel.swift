

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var discount: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var id: String

        public var sellerIdentifier: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case identifier

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case quantity

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case discount

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.identifier = identifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var discount: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var id: String

        public var sellerIdentifier: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case identifier

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case quantity

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case discount

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.identifier = identifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
