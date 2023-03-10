

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var sku: String

        public var transferPrice: Int

        public var companyId: Int

        public var itemId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var quantity: Int

        public var id: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case sku

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case quantity

            case id = "_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.sku = sku

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.quantity = quantity

            self.id = id

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

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

        public var avlQty: Int

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var modifiedOn: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var sku: String

        public var transferPrice: Int

        public var companyId: Int

        public var itemId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var quantity: Int

        public var id: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case sku

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case quantity

            case id = "_id"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.sku = sku

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.quantity = quantity

            self.id = id

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
