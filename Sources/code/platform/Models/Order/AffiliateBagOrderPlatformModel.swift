

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var discount: Double

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var sku: String

        public var companyId: Int

        public var quantity: Int

        public var storeId: Int

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var itemSize: String

        public var modifiedOn: String

        public var unitPrice: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case discount

            case identifier

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case sku

            case companyId = "company_id"

            case quantity

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.sku = sku

            self.companyId = companyId

            self.quantity = quantity

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

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
        public var sellerIdentifier: String

        public var discount: Double

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var sku: String

        public var companyId: Int

        public var quantity: Int

        public var storeId: Int

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var itemSize: String

        public var modifiedOn: String

        public var unitPrice: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case discount

            case identifier

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case sku

            case companyId = "company_id"

            case quantity

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.sku = sku

            self.companyId = companyId

            self.quantity = quantity

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
