

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var avlQty: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var modifiedOn: String

        public var itemSize: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var id: String

        public var storeId: Int

        public var transferPrice: Int

        public var sku: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case avlQty = "avl_qty"

            case quantity

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case identifier

            case id = "_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case sku

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.avlQty = avlQty

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.id = id

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.sku = sku

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

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
        public var unitPrice: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var discount: Double

        public var avlQty: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var modifiedOn: String

        public var itemSize: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var id: String

        public var storeId: Int

        public var transferPrice: Int

        public var sku: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case avlQty = "avl_qty"

            case quantity

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case identifier

            case id = "_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case sku

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.avlQty = avlQty

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.id = id

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.sku = sku

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
