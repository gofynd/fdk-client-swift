

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var itemId: Int

        public var transferPrice: Int

        public var avlQty: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var id: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var companyId: Int

        public var discount: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var sku: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case companyId = "company_id"

            case discount

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.companyId = companyId

            self.discount = discount

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

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
        public var itemSize: String

        public var itemId: Int

        public var transferPrice: Int

        public var avlQty: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var id: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var companyId: Int

        public var discount: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var sku: String

        public var affiliateStoreId: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case companyId = "company_id"

            case discount

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.companyId = companyId

            self.discount = discount

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
