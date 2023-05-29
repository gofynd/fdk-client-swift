

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var itemSize: String

        public var itemId: Int

        public var sku: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var companyId: Int

        public var fyndStoreId: String

        public var quantity: Int

        public var storeId: Int

        public var modifiedOn: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case identifier

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case sku

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case quantity

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case discount

            case pdfLinks = "pdf_links"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.itemId = itemId

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

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
        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var itemSize: String

        public var itemId: Int

        public var sku: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var companyId: Int

        public var fyndStoreId: String

        public var quantity: Int

        public var storeId: Int

        public var modifiedOn: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case identifier

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case sku

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case quantity

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case discount

            case pdfLinks = "pdf_links"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.itemId = itemId

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
