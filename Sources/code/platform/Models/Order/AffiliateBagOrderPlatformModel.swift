

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var priceMarked: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case quantity

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case identifier

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.id = id

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

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
        public var sku: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var priceMarked: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case quantity

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case identifier

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.id = id

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
