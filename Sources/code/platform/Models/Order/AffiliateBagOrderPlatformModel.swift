

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var storeId: Int

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var companyId: Int

        public var itemSize: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var priceEffective: Double

        public var transferPrice: Int

        public var id: String

        public var itemId: Int

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case itemSize = "item_size"

            case discount

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case id = "_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.id = id

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var storeId: Int

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var companyId: Int

        public var itemSize: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var priceEffective: Double

        public var transferPrice: Int

        public var id: String

        public var itemId: Int

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case itemSize = "item_size"

            case discount

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case id = "_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.id = id

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
