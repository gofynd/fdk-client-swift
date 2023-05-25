

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var avlQty: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var discount: Double

        public var id: String

        public var transferPrice: Int

        public var storeId: Int

        public var companyId: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var fyndStoreId: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case identifier

            case itemSize = "item_size"

            case discount

            case id = "_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.discount = discount

            self.id = id

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

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
        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var avlQty: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var discount: Double

        public var id: String

        public var transferPrice: Int

        public var storeId: Int

        public var companyId: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var fyndStoreId: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case identifier

            case itemSize = "item_size"

            case discount

            case id = "_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.itemSize = itemSize

            self.discount = discount

            self.id = id

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
