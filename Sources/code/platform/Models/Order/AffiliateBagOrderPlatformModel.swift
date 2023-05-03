

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var unitPrice: Double

        public var itemId: Int

        public var sku: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case identifier

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.identifier = identifier

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
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

        public var unitPrice: Double

        public var itemId: Int

        public var sku: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var amountPaid: Double

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case identifier

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.identifier = identifier

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
