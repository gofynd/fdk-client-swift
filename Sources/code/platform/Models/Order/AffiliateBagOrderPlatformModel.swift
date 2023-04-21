

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var itemSize: String

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var quantity: Int

        public var amountPaid: Double

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var itemId: Int

        public var unitPrice: Double

        public var companyId: Int

        public var id: String

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case quantity

            case amountPaid = "amount_paid"

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

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
        public var storeId: Int

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var itemSize: String

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var quantity: Int

        public var amountPaid: Double

        public var sku: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var itemId: Int

        public var unitPrice: Double

        public var companyId: Int

        public var id: String

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case quantity

            case amountPaid = "amount_paid"

            case sku

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.sku = sku

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
