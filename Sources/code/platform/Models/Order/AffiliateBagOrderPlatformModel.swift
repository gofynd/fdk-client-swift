

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var itemSize: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var quantity: Int

        public var discount: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case quantity

            case discount

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case identifier

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.quantity = quantity

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.companyId = companyId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

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

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var itemSize: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var quantity: Int

        public var discount: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case quantity

            case discount

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case identifier

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.quantity = quantity

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.companyId = companyId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
