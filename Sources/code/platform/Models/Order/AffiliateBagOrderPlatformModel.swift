

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var itemSize: String

        public var modifiedOn: String

        public var avlQty: Int

        public var id: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var discount: Double

        public var priceEffective: Double

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case id = "_id"

            case companyId = "company_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case discount

            case priceEffective = "price_effective"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.id = id

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.discount = discount

            self.priceEffective = priceEffective

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

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
        public var deliveryCharge: Double

        public var itemSize: String

        public var modifiedOn: String

        public var avlQty: Int

        public var id: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var discount: Double

        public var priceEffective: Double

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case id = "_id"

            case companyId = "company_id"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case discount

            case priceEffective = "price_effective"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.id = id

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.discount = discount

            self.priceEffective = priceEffective

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
