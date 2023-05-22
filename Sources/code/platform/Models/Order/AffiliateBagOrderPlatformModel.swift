

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var quantity: Int

        public var itemId: Int

        public var storeId: Int

        public var priceEffective: Double

        public var transferPrice: Int

        public var id: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var avlQty: Int

        public var modifiedOn: String

        public var sku: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var affiliateStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case quantity

            case itemId = "item_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case id = "_id"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case sku

            case fyndStoreId = "fynd_store_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.quantity = quantity

            self.itemId = itemId

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.id = id

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

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
        public var discount: Double

        public var quantity: Int

        public var itemId: Int

        public var storeId: Int

        public var priceEffective: Double

        public var transferPrice: Int

        public var id: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var avlQty: Int

        public var modifiedOn: String

        public var sku: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var affiliateStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case quantity

            case itemId = "item_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case id = "_id"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case sku

            case fyndStoreId = "fynd_store_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.quantity = quantity

            self.itemId = itemId

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.id = id

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
