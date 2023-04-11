

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var discount: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var quantity: Int

        public var affiliateStoreId: String

        public var sku: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var fyndStoreId: String

        public var id: String

        public var itemId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case discount

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case identifier

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.discount = discount

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

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
        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var discount: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var quantity: Int

        public var affiliateStoreId: String

        public var sku: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var fyndStoreId: String

        public var id: String

        public var itemId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case discount

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case identifier

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.discount = discount

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
