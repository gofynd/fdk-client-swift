

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var id: String

        public var amountPaid: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var unitPrice: Double

        public var itemSize: String

        public var sku: String

        public var companyId: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case discount

            case id = "_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case avlQty = "avl_qty"

            case quantity

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case sku

            case companyId = "company_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.id = id

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.avlQty = avlQty

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.sku = sku

            self.companyId = companyId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var id: String

        public var amountPaid: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var quantity: Int

        public var unitPrice: Double

        public var itemSize: String

        public var sku: String

        public var companyId: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case discount

            case id = "_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case avlQty = "avl_qty"

            case quantity

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case sku

            case companyId = "company_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.id = id

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.avlQty = avlQty

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.sku = sku

            self.companyId = companyId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
