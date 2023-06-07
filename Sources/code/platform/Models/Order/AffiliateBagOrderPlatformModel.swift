

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var discount: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var sku: String

        public var id: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case priceMarked = "price_marked"

            case discount

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case id = "_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.id = id

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
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

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var discount: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var sku: String

        public var id: String

        public var itemSize: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case priceMarked = "price_marked"

            case discount

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case id = "_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.id = id

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
