

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var priceEffective: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemId: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var storeId: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case priceEffective = "price_effective"

            case quantity

            case identifier

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case discount

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

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
        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var priceEffective: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemId: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var storeId: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case priceEffective = "price_effective"

            case quantity

            case identifier

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case discount

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
