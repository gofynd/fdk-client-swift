

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var modifiedOn: String

        public var storeId: Int

        public var itemSize: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var id: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var companyId: Int

        public var avlQty: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var sku: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case id = "_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case discount

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.id = id

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.avlQty = avlQty

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

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

        public var modifiedOn: String

        public var storeId: Int

        public var itemSize: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var id: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var companyId: Int

        public var avlQty: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var sku: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case id = "_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case discount

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.id = id

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.avlQty = avlQty

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
