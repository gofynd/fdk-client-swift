

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var itemSize: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var id: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var storeId: Int

        public var itemId: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case identifier

            case discount

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.id = id

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.discount = discount

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

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

        public var itemSize: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var id: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var storeId: Int

        public var itemId: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case id = "_id"

            case unitPrice = "unit_price"

            case identifier

            case discount

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.id = id

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.discount = discount

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
