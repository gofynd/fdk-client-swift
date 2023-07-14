

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var companyId: Int

        public var amountPaid: Double

        public var id: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var discount: Double

        public var modifiedOn: String

        public var itemSize: String

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case id = "_id"

            case storeId = "store_id"

            case identifier

            case discount

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.id = id

            self.storeId = storeId

            self.identifier = identifier

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

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
        public var sku: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var companyId: Int

        public var amountPaid: Double

        public var id: String

        public var storeId: Int

        public var identifier: [String: Any]

        public var discount: Double

        public var modifiedOn: String

        public var itemSize: String

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case id = "_id"

            case storeId = "store_id"

            case identifier

            case discount

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.id = id

            self.storeId = storeId

            self.identifier = identifier

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
