

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var avlQty: Int

        public var storeId: Int

        public var id: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var discount: Double

        public var quantity: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var itemId: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case identifier

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case discount

            case quantity

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.storeId = storeId

            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.discount = discount

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

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
        public var priceMarked: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var avlQty: Int

        public var storeId: Int

        public var id: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var discount: Double

        public var quantity: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var itemId: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case identifier

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case discount

            case quantity

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.storeId = storeId

            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.discount = discount

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
