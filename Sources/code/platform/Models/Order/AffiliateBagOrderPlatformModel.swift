

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var avlQty: Int

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var sku: String

        public var priceMarked: Double

        public var itemId: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var discount: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemSize: String

        public var quantity: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case sku

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case discount

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case quantity

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.sku = sku

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.quantity = quantity

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

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
        public var id: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var avlQty: Int

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var sku: String

        public var priceMarked: Double

        public var itemId: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var discount: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemSize: String

        public var quantity: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case sku

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case discount

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case quantity

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.sku = sku

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.quantity = quantity

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
