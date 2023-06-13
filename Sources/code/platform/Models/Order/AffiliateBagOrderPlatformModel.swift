

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var priceMarked: Double

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var id: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var discount: Double

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var unitPrice: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case discount

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

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
        public var quantity: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var priceMarked: Double

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var id: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var discount: Double

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var unitPrice: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case discount

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
