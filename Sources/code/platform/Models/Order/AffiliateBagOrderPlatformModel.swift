

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var itemSize: String

        public var itemId: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var discount: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var id: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case discount

            case modifiedOn = "modified_on"

            case identifier

            case id = "_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.id = id

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

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
        public var companyId: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var itemSize: String

        public var itemId: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var discount: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var id: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case discount

            case modifiedOn = "modified_on"

            case identifier

            case id = "_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.id = id

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
